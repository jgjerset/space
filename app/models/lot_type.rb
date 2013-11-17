class LotType < ActiveRecord::Base
  attr_accessible :description, :enddate, :numspots, :rate, :startdate, :lot_type_desc, :location_id

  validates_presence_of :description, :enddate, :numspots, :rate, :startdate, :lot_type_desc
  validates_numericality_of :numspots
 
  belongs_to :location
end
