class RemovePictureFromRoutes < ActiveRecord::Migration
  def up
    remove_column :routes, :picture
      end

  def down
    add_column :routes, :picture, :string
  end
end
