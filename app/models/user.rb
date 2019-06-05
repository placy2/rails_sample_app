class User < ApplicationRecord
  #storing email in lowercase
  before_save { email.downcase! }
  #name validations
  validates :name, presence: true, length: { maximum: 50 }
  #email validations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format:   { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  #password validations
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
end
