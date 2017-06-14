class Schedule < ApplicationRecord
  has_many :positions
  belongs_to :train
end
