require 'bcrypt'

class User < ActiveRecord::Base

  validates :email, presence: true
  validates :password_digest, presence: true

 def password
    @password ||= BCrypt::Password.new(password_digest) if password_digest.present?
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_digest = @password
  end
end
