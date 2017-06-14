class CreateWagons < ActiveRecord::Migration[5.0]
  def change
    create_table :wagons do |t|
      t.string :type
      t.integer :seats
      t.integer :quantity
      t.belongs_to :train, index: true

      t.timestamps
    end
  end
end
