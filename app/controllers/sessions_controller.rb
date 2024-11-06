class SessionsController < ApplicationController
  def instagram
    redirect_to "https://www.instagram.com/oauth/authorize/third_party/?client_id=453032803993121&redirect_uri=https://localhost:8080/auth/instagram/callback&scope=user_profile,user_media&response_type=code"
  end

  def instagram_create
    auth = request.env['omniauth.auth']
    puts auth
    
    # Find or initialize the user based on a key or session value
    user_key_current = params[:user_key] || session[:current_user_key]
    if user_key_current
      @user = GeneralInfo.find_by(userKey: user_key_current)
    end

    # Retrieve the access token
    access_token = auth['credentials']['token']
    
    # Fetch the user's Instagram posts
    @insta_posts = fetch_instagram_posts(access_token)
    
    # Redirect or render the profile with the posts
    redirect_to show_profile_path
  end

  private

  # Helper method to fetch posts using Instagram Graph API
  def fetch_instagram_posts(access_token)
    url = URI("https://graph.instagram.com/me/media?fields=id,caption,media_url,media_type,permalink,timestamp&access_token=#{access_token}")
    response = Net::HTTP.get(url)
    parsed_response = JSON.parse(response)
    
    if parsed_response['data']
      parsed_response['data']
    else
      [] # Return an empty array if no posts found
    end
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
  