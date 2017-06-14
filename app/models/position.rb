class Position < ApplicationRecord
  belongs_to :schedule
  belongs_to :station
  belongs_to :train
  has_many :positions

  validates :station, presence: true
end
