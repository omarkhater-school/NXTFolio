class GeneralInfoController < ApplicationController
  before_action :set_login_user_session, only: [:new, :create]

  # Lists all general information
  def list
    @general_infos = GeneralInfo.all
  end
  
  # Generates a personalized 'About Me' section
  def generate_about_me
    @general_info = GeneralInfo.find_by(user_id: current_user.id)
    return render json: { error: 'User not found' }, status: :not_found unless @general_info

    generator = AboutMeGenerator.new(@general_info)
    render json: {
      about_me: generator.generate_about_me,
      missing_fields: generator.missing_fields,
      message: missing_fields_message(generator.missing_fields)
    }
  end

  # Promotes a user to admin if authorized
  def make_admin
    if admin_authorized?
      user_entry = GeneralInfo.find_by(user_id: params[:user_id])
      user_entry ? update_user_as_admin(user_entry) : redirect_to(root_path)
    else
      redirect_to root_path
    end
  end

  # Renders the form for new General Info
  def new
    set_countries_and_jobs
    initialize_general_info
  end

  # Renders the secondary form for new General Info
  def new2
    initialize_general_info
  end

  # Handles the creation of new General Info
  def create
    @general_info = GeneralInfo.new(general_info_params)

    if email_exists?
      flash[:error] = "An account with this email already exists. Please log in or use a different email."
      render :new and return
    end

    setup_login_user

    if @general_info.save
      flash[:success] = "Profile created successfully."
      UserMailer.welcome_email(@general_info, current_user).deliver_now!
      redirect_after_save
    else
      flash[:error] = @general_info.errors.full_messages.to_sentence
      render :new
    end
  end

  # Edit views for General Info
  def edit
    load_and_initialize_for_edit
  end

  def edit2
    load_and_initialize_for_edit
  end

  def edit_travel
    load_and_initialize_for_edit
  end

  # Updates General Info
  def update
    if load_general_info&.update(general_info_update_param)
      redirect_to params[:continue] ? '/general_info/edit2' : '/show_profile'
    else
      render :edit
    end
  end

  # Follow or unfollow other users
  def follow
    change_follow_status(:follow)
  end

  def unfollow
    change_follow_status(:unfollow)
  end

  private

  # --- Helper Methods ---

  def missing_fields_message(missing_fields)
    return nil unless missing_fields.any?
    "For better personalization, please complete the following fields: #{missing_fields.join(', ')}."
  end

  def change_follow_status(action)
    other_user = GeneralInfo.find(params[:id])
    current_user.general_info.public_send(action, other_user)
    redirect_to show_profile_path(user_key: other_user.userKey)
  end

  # --- Authorization and Session Management ---

  def admin_authorized?
    current_user&.general_info&.is_admin
  end

  def set_login_user_session
    if current_user
      session[:current_user_key] = current_user.id
      Rails.logger.debug "Session set for current_user_key: #{session[:current_user_key]}"
    else
      Rails.logger.debug "No user logged in, redirecting to login page"
      redirect_to new_user_session_path, alert: 'Please log in first.'
    end
  end

  # --- Setup and Initialization ---

  def set_countries_and_jobs
    @countries = Country.order(:name)
    @possible_Jobs = GeneralInfo.see_Jobs
    @templates = Template.pluck(:prof_name).sort.unshift('Designer', 'Model', 'Photographer')
  end

  def initialize_general_info
    @general_info ||= GeneralInfo.new(emailaddr: current_user&.email)
  end

  def load_and_initialize_for_edit
    set_countries_and_jobs
    load_general_info || redirect_to(action: 'new')
  end

  def load_general_info
    @general_info = GeneralInfo.find_by(user_id: current_user.id)
  end

  def setup_login_user
    raise "User not logged in" if current_user.nil?

    @general_info.user = current_user
    initialize_general_info_profile
  end

  def initialize_general_info_profile
    @general_info.user_id = current_user.id
    @general_info.is_admin = User.count == 1  # Make the first user an admin by default
    @general_info.job_name = assign_job_name
  end

  def assign_job_name
    job_name = params[:general_info][:job_name]
    job_name.casecmp('admin').zero? && GeneralInfo.any? ? 'Photographer' : job_name
  end

  # --- Redirect and Email Validation ---

  def redirect_after_save
    if params[:select_one]
      Rails.logger.debug "Redirecting to general_info_new2_path"
      session.delete(:current_login_user)
      redirect_to general_info_new2_path
    elsif params[:select_two]
      Rails.logger.debug "Redirecting to search_engine_show_path"
      redirect_to search_engine_show_path
    else
      Rails.logger.debug "No redirection path met; returning 204 No Content"
      head :no_content
    end
  end

  def email_exists?
    existing_user = User.find_by(email: params[:general_info][:emailaddr])
    existing_user.present? && existing_user.id != current_user.id
  end

  # --- Admin and User Updates ---

  def update_user_as_admin(user_entry)
    user_entry.update(is_admin: true, job_name: 'Admin')
    redirect_to show_profile_path(user_key: params[:user_id])
  end

  # --- Permitted Params ---

  def general_info_params
    params.require(:general_info).permit(
      :first_name, :last_name, :company, :industry, :highlights, :country, :state,
      :city, :emailaddr, :bio, :specialization, :profdetails, :facebook_link,
      :linkedIn_link, :profile_picture, :personalWebsite_link, :compensation,
      :experience, :specific_profile_id, :job_name, :cover_picture, :gallery_pictures,
      :travel_country, :travel_state, :travel_city, :travel_start, :travel_end,
      :travel_details, tempVar: []
    )
  end

  def general_info_update_param
    params.require(:general_info).permit(
      :first_name, :last_name, :company, :highlights, :industry, :country, :state,
      :city, :emailaddr, :bio, :specialization, :profdetails, :facebook_link,
      :linkedIn_link, :profile_picture, :personalWebsite_link, :compensation,
      :experience, :cover_picture, :gallery_pictures, :travel_country, :travel_state,
      :travel_city, :travel_start, :travel_end, :travel_details, tempVar: []
    )
  end
end
