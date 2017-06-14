class Station < ApplicationRecord
  has_many :positions, dependent: :destroy
  validates :name, :address, :phone, :city, :state, presence: true
end
