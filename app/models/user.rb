class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :password, length: { minimum: 4 }
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email, password)
    @user = User.where("TRIM(LOWER(email)) = TRIM(LOWER(?))", email).first
    if @user && @user.authenticate(password)
      @user
    else
      nil
    end
  end
end
