class Round < ApplicationRecord
  belongs_to :game
  has_many :quest_players
  has_many :players, :through => :quest_players
  has_many :leaders
end
