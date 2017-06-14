class Schedule < ApplicationRecord
  has_many :positions, dependent: :destroy
  belongs_to :train
  validates :hours, :minutes, presence: true
end
