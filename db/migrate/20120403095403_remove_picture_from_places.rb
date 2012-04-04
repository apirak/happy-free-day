class RemovePictureFromPlaces < ActiveRecord::Migration
  def up
    remove_column :places, :picture
      end

  def down
    add_column :places, :picture, :string
  end
end
