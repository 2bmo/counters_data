class CreateColds < ActiveRecord::Migration[5.2]
  def change
    create_table :colds do |t|
      t.integer :cold_water_data
      t.references :customer, foreign_key: true

      t.timestamps null: false
    end
  end
end
