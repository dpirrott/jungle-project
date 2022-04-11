class User < ActiveRecord::Base

  has_secure_password
  validates :fullName, presence: true
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :password, confirmation: true
  validates :password, length: { minimum: 4 }
  validates :password_confirmation, presence: true
end
