class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :title
      t.integer :order

      t.timestamps
    end
  end
end
