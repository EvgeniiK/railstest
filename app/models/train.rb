class Train < ApplicationRecord
  has_one :position, dependent: :destroy
  has_one :schedule, dependent: :destroy
  has_many :wagons
  validates :name, presence: true
end
