class Player < ApplicationRecord
  belongs_to :room
  has_many :quest_players
  has_many :rounds, :through => :quest_players

  has_many :votes
  has_many :leaders, :through => :votes
end
