class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.text :image
      t.text :description
      t.string :location
      t.integer :build_year
      t.text :equiments
      t.integer :floor_number

      t.timestamps
    end
  end
end
