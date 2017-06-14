class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.time :arrival
      t.time :dispatch
      t.belongs_to :station, index: true, foreign_key: true
      t.belongs_to :schedule, index: true, foreign_key: true
      t.belongs_to :train, index: true

      t.timestamps
    end
  end
end
