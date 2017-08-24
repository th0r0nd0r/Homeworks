class User < ApplicationRecord
  validates :username, :session_token, presence: true
  validates: :password_digest, presence: { message: "password can't be blank"}
  validates: :password, length: { minimum: 6, allow_nil: true}
  before_validation :ensure_session_token


  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end
end
