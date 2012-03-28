class PlacesRoute < ActiveRecord::Base
  belongs_to :route
  belongs_to :place
end
