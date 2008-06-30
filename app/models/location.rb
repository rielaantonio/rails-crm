class Location < ActiveRecord::Base
  validates_presence_of :line1, :city_id, :state_id, :zipcode_id, :county_id, 
                        :country_id
  validates_numericality_of :city_id, :state_id, :zipcode_id, :county_id,
                            :country_id
end
