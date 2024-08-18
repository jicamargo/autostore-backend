class User < ApplicationRecord
  has_secure_password

  # Validaciones adicionales
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  def generate_jwt
    JWT.encode({ id: id, exp: 30.days.from_now.to_i }, Rails.application.credentials.secret_key_base)
  end
end
