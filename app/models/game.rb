class Game < ApplicationRecord
  belongs_to :room
  has_many :rounds
end