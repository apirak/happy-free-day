class Place < ActiveRecord::Base
  has_many :places_routes, :dependent => :destroy
  has_many :routes, :through => :places_routes  
  has_attached_file :photo, :styles => { :small => "50x50>" }
end
