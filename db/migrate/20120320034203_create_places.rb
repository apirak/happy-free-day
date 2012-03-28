class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title
      t.text :content
      t.string :picture
      t.float :lat
      t.float :long
      t.string :tag
      t.integer :vote

      t.timestamps
    end
  end
end
