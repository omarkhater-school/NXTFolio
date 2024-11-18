class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, and :trackable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]

  before_create :set_user_key
  # Scope to exclude a specific user from query results
  scope :all_except, ->(user) { where.not(id: user) }

  # Handle user data received from social logins
  def self.new_with_session(params, session)
    super.tap do |user|
      if (data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"])
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  # Find or create a user from Omniauth authentication data
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.name   # assuming the user model has a name field
      user.image = auth.info.image # assuming the user model has an image field
      user.skip_confirmation!      # Skip email confirmation for social logins
    end
  end

  private

  def set_user_key
    self.userKey = SecureRandom.hex(10) if userKey.blank?
  end
end

