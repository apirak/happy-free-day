class AddXAndYToPlacesRoutes < ActiveRecord::Migration
  def change
    add_column :places_routes, :x, :int
    add_column :places_routes, :y, :int
  end
end
