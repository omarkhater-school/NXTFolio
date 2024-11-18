# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
    def create
      super
      # Send email confirmation logic if not handled automatically by Devise
      flash[:notice] = "Please confirm your email to complete the sign-up process" if resource.persisted?
    end
  end
  