class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :availability
      t.integer :home_temperature
      t.text :fav_color

      t.timestamps

    end
  end
end
