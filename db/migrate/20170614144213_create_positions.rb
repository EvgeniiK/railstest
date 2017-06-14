class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :arrival
      t.string :dispatch
      t.datetime :to
      t.belongs_to :station, index: true
      t.belongs_to :schedule, index: true

      t.timestamps
    end
  end
end
