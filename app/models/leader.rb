class Leader < ApplicationRecord
  belongs_to :round
  belongs_to :player
  has_many :votes
  has_many :players, :through => :votes
end
