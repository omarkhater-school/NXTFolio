# app/controllers/confirmations_controller.rb
class ConfirmationsController < Devise::ConfirmationsController
    protected
  
    def after_confirmation_path_for(resource_name, resource)
      sign_in(resource) # Ensures user is signed in after confirmation
      session[:current_login_user] = { "email" => resource.email }
      new_general_info_path # Redirects to /general_info/new
    end
  end
  