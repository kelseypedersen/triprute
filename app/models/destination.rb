class Destination < ActiveRecord::Base

  validates :days, numericality: true

  belongs_to :trip
end