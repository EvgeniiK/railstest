class CreateTrains < ActiveRecord::Migration[5.0]
  def change
    create_table :trains do |t|
      t.string :name
      t.string :type
      t.belongs_to :station

      t.timestamps
    end
  end
end
