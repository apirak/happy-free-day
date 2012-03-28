class CreatePlacesRoutes < ActiveRecord::Migration
  def up
    create_table :places_routes do |t|
      t.integer :place_id
      t.integer :route_id
      t.integer :order

      t.timestamps
    end    
  end

  def down
    drop_table :places_routes
  end
end
