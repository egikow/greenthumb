class CreateSills < ActiveRecord::Migration
  def change
    create_table :sills do |t|
      t.text :light
      t.integer :temp_min
      t.integer :temp_max
      t.integer :height
      t.integer :width
      t.integer :user_id
      t.integer :plant_id

      t.timestamps

    end
  end
end
