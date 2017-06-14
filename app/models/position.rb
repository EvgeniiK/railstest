class Position < ApplicationRecord
  belongs_to :schedule
  belongs_to :station
end
