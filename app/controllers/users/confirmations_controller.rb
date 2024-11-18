# app/controllers/users/confirmations_controller.rb
class Users::ConfirmationsController < Devise::ConfirmationsController
    # GET /users/confirmation?confirmation_token=abcdef
    def show
      self.resource = resource_class.confirm_by_token(params[:confirmation_token])
      if resource.errors.empty?
        # Redirect to the desired path after confirmation
        set_flash_message!(:notice, :confirmed)
        respond_with_navigational(resource) { redirect_to after_confirmation_path_for(resource_name, resource) }
      else
        respond_with_navigational(resource.errors, status: :unprocessable_entity) { render :new }
      end
    end
  
    private
  
    def after_confirmation_path_for(resource_name, resource)
        sign_in(resource) unless user_signed_in? # Ensures the user is signed in after confirmation
        session[:current_login_user] = { "email" => resource.email }
        new_general_info_path # Redirects to /general_info/new
    end
  end
  