class SessionsController < ApplicationController
  def instagram
    #     # This action will redirect to Instagram for authentication
        redirect_to "/auth/instagram"
  end
  
  def create
    auth = request.env['omniauth.auth']
    user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.provider = auth['provider']
      u.name = auth['info']['name']
      u.image = auth['info']['image']
    end

    if user.persisted?
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to auth_failure_path
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
  