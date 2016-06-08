class CreateCares < ActiveRecord::Migration
  def change
    create_table :cares do |t|
      t.text :light
      t.text :temperature
      t.text :water
      t.string :image
      t.text :warning
      t.text :tip

      t.timestamps

    end
  end
end
