class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :city
      t.string :state
      t.string :name

      t.timestamps
    end
  end
end
