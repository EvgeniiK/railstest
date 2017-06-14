class AddFieldsToStation < ActiveRecord::Migration[5.0]
  def change
    add_column :stations, :address, :string
    add_column :stations, :phone, :string
    add_column :stations, :information, :text
  end
end
