class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.integer :hours
      t.integer :minutes
      t.belongs_to :train, index: true

      t.timestamps
    end
  end
end
