class Destination < ActiveRecord::Base

  include Elasticsearch::Model

  belongs_to :trip

  validates :days, numericality: true

end