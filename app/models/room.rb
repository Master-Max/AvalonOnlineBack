class Room < ApplicationRecord
  has_many :players
  has_one :game
end
