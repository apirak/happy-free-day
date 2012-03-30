class ChangeOrderToSequence < ActiveRecord::Migration
  def up
  	rename_column :routes, :order, :sequence
  	rename_column :places_routes, :order, :sequence
  end

  def down
  	rename_column :routes, :sequence, :order
  	rename_column :places_routes, :sequence, :order
  end
end
