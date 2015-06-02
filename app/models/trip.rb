class Trip < ActiveRecord::Base

  belongs_to :user

  has_many :destinations
  has_many :wishlists

end