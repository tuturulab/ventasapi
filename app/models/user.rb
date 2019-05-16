#Schema (firstName, lastName, email, pictureUrl, facebookId, password_digest)
class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  belongs_to :user
end
