class ModifyTypeOfRoom < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :images, :text, default: [].to_yaml
  end
end
