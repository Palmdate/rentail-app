class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :rentail_fee
      t.integer :manager_fee
      t.float :size
      t.text :image
      t.references :building, null: false, foreign_key: true
      t.references :floor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
