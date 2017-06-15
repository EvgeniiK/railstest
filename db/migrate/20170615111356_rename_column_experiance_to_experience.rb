class RenameColumnExperianceToExperience < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :staffs, :experiance, :experience
  end

  def self.down
    rename_column :staffs, :experience, :experiance
  end
end
