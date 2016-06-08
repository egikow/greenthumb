class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.text :name
      t.text :description
      t.text :tip
      t.text :highlights
      t.string :image
      t.integer :care_id

      t.timestamps

    end
  end
end
