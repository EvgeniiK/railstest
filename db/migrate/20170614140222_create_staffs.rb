class CreateStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :staffs do |t|
      t.string :position
      t.string :name
      t.integer :experiance
      t.text :about
      t.boolean :published
      t.belongs_to :station
      t.belongs_to :train

      t.timestamps
    end
  end
end
