class Trip < ActiveRecord::Base
  # Remember to create a migration!
  has_many :cities
end