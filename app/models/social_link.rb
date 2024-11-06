class SocialLink < ApplicationRecord
  belongs_to :profile
  validates :platform, presence: true, length: {maximum:50}
  validates :url, presence: true, format: {with: URI::DEFAULT_PARSER.make_regexp, message: "is not a valid URL"}
end
