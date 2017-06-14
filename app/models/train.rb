class Train < ApplicationRecord
  has_one :position, dependent: :destroy
  has_one :schedule, dependent: :destroy
  validates :name, presence: true
end
