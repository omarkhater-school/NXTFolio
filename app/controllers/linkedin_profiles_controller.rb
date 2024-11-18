class LinkedinProfilesController < ApplicationController
  def linkedin
    client_id = ENV['LINKEDIN_CLIENT_ID']
    redirect_uri = 'http://localhost:8080/auth/linkedin/callback' # Use ngrok's HTTPS URL
    linkedin_auth_url = "https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=#{client_id}&redirect_uri=#{CGI.escape(redirect_uri)}&scope=profile%20email&state=UNIQUE_STATE_STRING"

    redirect_to linkedin_auth_url
  end

  def create
    if params[:error]
      flash[:alert] = "Authorization failed: #{params[:error_description]}"
      redirect_to root_path
      return
    end

    authorization_code = params[:code]
    state = params[:state]

    # Optional: Verify `state` to prevent CSRF attacks
    # Ensure `state` matches the value you sent in the authorization URL

    # Exchange authorization code for an access token
    access_token_response = request_access_token(authorization_code)

    if access_token_response[:error]
      flash[:alert] = "Failed to obtain access token: #{access_token_response[:error_description]}"
      redirect_to root_path
      return
    end
    flash[:notice] = "obtained access token: #{access_token_response[:access_token]}"
    # Save the token in the database
    # linkedin_id = fetch_user_id(access_token_response[:access_token])

    # if linkedin_id
    #   LinkedinToken.find_or_create_by(linkedin_id: linkedin_id) do |token|
    #     token.access_token = access_token_response[:access_token]
    #     token.expires_at = Time.now + access_token_response[:expires_in].to_i.seconds
    #   end

    #   flash[:notice] = 'Access token stored successfully!'
    # else
    #   flash[:notice] = "Failed to obtain access token: #{access_token_response[:access_token_response[:access_token]]}"
    #   redirect_to root_path
    # end

    redirect_to root_path
    # auth = request.env['omniauth.auth']
    # profile_data = extract_profile_data(auth)

    # linkedin_profile = LinkedinProfile.find_or_initialize_by(linkedin_id: profile_data[:linkedin_id])
    # linkedin_profile.assign_attributes(profile_data)

    # if linkedin_profile.save
    #   flash[:notice] = 'Profile saved successfully!'
    # else
    #   flash[:alert] = 'Failed to save the profile.'
    # end

    # redirect_to linkedin_profiles_path
  end

  private

  def request_access_token(authorization_code)
    uri = URI.parse('https://www.linkedin.com/oauth/v2/accessToken')
    response = Net::HTTP.post_form(uri, {
      'grant_type' => 'authorization_code',
      'code' => authorization_code,
      'redirect_uri' => ENV['LINKEDIN_REDIRECT_URI'], # Replace with your actual redirect URI
      'client_id' => ENV['LINKEDIN_CLIENT_ID'],
      'client_secret' => ENV['LINKEDIN_CLIENT_SECRET']
    })

    JSON.parse(response.body, symbolize_names: true)
  end

  def extract_profile_data(auth)
    {
      linkedin_id: auth.uid,
      first_name: auth.info.first_name,
      last_name: auth.info.last_name,
      headline: auth.info.headline,
      profile_url: auth.info.urls.public_profile,
      email: auth.info.email,
      last_updated: Time.current
    }
  end

  def fetch_user_id(access_token)
    uri = URI.parse('https://api.linkedin.com/v2/me')
    request = Net::HTTP::Get.new(uri)
    request['Authorization'] = "Bearer #{access_token}"

    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
      http.request(request)
    end

    data = JSON.parse(response.body, symbolize_names: true)
    data[:id] # This is the LinkedIn user ID
  rescue StandardError
    nil
  end
end
