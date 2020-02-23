class ChangeTypeBuilding < ActiveRecord::Migration[6.0]
  def change
    add_column :buildings, :equipments, :text, default: [].to_yaml
  end
end
