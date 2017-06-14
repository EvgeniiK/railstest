class Schedule < ApplicationRecord
  has_many :positions, dependent: :destroy
  belongs_to :train
  validates :hours, :minutes, :train, presence: true
  accepts_nested_attributes_for :positions
end
