class Wishlist < ActiveRecord::Base

  has_many :trips
  belongs_to :user

end