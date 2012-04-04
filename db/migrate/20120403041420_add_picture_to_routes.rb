class AddPictureToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :picture, :string

  end
end
