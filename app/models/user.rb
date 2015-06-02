require 'bcrypt'

class User < ActiveRecord::Base

  has_many :trips
  has_one :wishlist

  include BCrypt

  # validates :email, uniqueness: true
  # validates :password_hash, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
