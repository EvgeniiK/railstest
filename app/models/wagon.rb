class Wagon < ApplicationRecord
  belongs_to :train
  validates :quantity, :type, :seats, presence: true
end
