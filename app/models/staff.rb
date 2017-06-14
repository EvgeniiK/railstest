class Staff < ApplicationRecord
  validates :name, :position, :about, presence: true
end
