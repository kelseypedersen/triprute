class Destination < ActiveRecord::Base

  belongs_to :trip

  validates :days, numericality: true

end