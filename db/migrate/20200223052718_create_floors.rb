class CreateFloors < ActiveRecord::Migration[6.0]
  def change
    create_table :floors do |t|
      t.integer :num_of_floor
      t.references :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end
