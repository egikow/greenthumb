class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.text :name
      t.text :description
      t.text :highlights
      t.text :official_name
      t.integer :height
      t.integer  :width
      t.string :image
      t.integer :care_id

      t.timestamps

    end
  end
end
