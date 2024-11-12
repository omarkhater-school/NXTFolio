class SessionsController < ApplicationController
  def instagram
    client_id = ENV['INSTAGRAM_CLIENT_ID']
    redirect_uri = 'https://24ca-173-219-167-170.ngrok-free.app/auth/instagram/callback' # Use ngrok's HTTPS URL

    instagram_auth_url = "https://api.instagram.com/oauth/authorize" \
    "?client_id=#{client_id}" \
    "&redirect_uri=#{CGI.escape(redirect_uri)}" \
    "&scope=user_profile,user_media" \
    "&response_type=code"

    redirect_to instagram_auth_url
  end

  def instagram_create
    auth = request.env['omniauth.auth']

    if auth.present? && auth['credentials'].present?
      access_token = auth['credentials']['token']
      
      # Find or create user based on Instagram data
      user_key_current = session[:current_user_key]
      @user = GeneralInfo.find_by(userKey: user_key_current)
  
      if @user
        # Update user's Instagram access token
        @user.update(instagram_access_token: access_token)
        
        # Fetch Instagram posts
        @insta_posts = fetch_instagram_posts(access_token)
        
        # Save Instagram posts to user's record (assuming you have a relation set up)
        @user.update(instagram_photos: @insta_posts)
  
        # Redirect to show_profile with success message
        flash[:success] = "Instagram account connected successfully!"
        redirect_to show_profile_path(user_key: @user.userKey)
      else
        # Handle case where user is not found
        flash[:error] = "User not found. Please log in and try again."
        redirect_to login_path
      end
    else
      # Handle authentication failure
      flash[:error] = "Instagram authentication failed. Please try again."
      redirect_to root_path
    end
  end

  private

  # Helper method to fetch posts using Instagram Graph API
  def fetch_instagram_posts(access_token)
              # Use a gem like 'instagram' or make HTTP requests to the Instagram API
      client = Instagram.client(access_token: access_token)
      client.user_recent_media
    rescue Instagram::Error => e
      Rails.logger.error "Instagram API error: #{e.message}"
      flash[:error] = "Failed to fetch Instagram posts. Please try again later."
      []
        end

  def failure
    render plain: "Authentication failed"
  end
end





  #   def omniauth
  #     user = User.from_omniauth(request.env['omniauth.auth'])
  #     if user.persisted?
  #       sign_in_and_redirect user, notice: "Connected to Instagram!"
  #     else
  #       redirect_to root_path, alert: "There was an issue connecting to Instagram."
  #     end
  #   end
  #   def instagram
  #     # This action will redirect to Instagram for authentication
  #     redirect_to "/auth/instagram"
  #   end
  #   def create
  #     auth = request.env['omniauth.auth']
  #     user = User.find_or_create_by(uid: auth['uid']) do |u|
  #     u.provider = auth['provider']
  #     u.name = auth['info']['name']
  #     u.image = auth['info']['image']
  #     # Handle the callback from Instagram after authentication
  #     # You may want to handle user creation or session management here
  #   end

  #   if user.persisted?
  #   session[:user_id] = user.id
  #   redirect_to root_path
  # else
  #   redirect_to auth_failure_path
  # end

  #   def failure
  #     # Handle failure case
  #     render plain: "Authentication failed"
  #   end
  # end
  