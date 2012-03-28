class Place < ActiveRecord::Base
  has_many :places_routes
  has_many :routes, :through => :places_routes  
end
