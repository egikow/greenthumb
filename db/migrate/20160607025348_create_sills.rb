class CreateSills < ActiveRecord::Migration
  def change
    create_table :sills do |t|
      t.text :light_type
      t.integer :home_temperature_id
      t.integer :height
      t.integer :width

      t.timestamps

    end
  end
end
