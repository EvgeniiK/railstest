class Staff < ApplicationRecord
  validates :name, :position, :about, presence: true
  belongs_to :station
  belongs_to :train
end
