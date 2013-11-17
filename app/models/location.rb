class Location < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state, :zip

  validates_presence_of :address, :city, :name, :state, :zip

  has_many :lot_types
end
