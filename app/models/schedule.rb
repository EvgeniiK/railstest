class Schedule < ApplicationRecord
  has_many :positions, dependent: :destroy
  belongs_to :train
  validates :train, presence: true
  accepts_nested_attributes_for :positions, allow_destroy: true

end
