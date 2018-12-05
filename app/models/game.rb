class Game < ApplicationRecord
  belongs_to :room
  has_many :rounds

  def make_rounds
    team_sizes = []
    if self.player_number == 5
      team_sizes = [2,3,2,3,3]
    else
      team_sizes = [2,3,2,3,3]
    end

    team_sizes.each{|n| Round.create({
      game_id: self.id,
      current_phase: 'voting',
      current_leader: self.room.players.sample,
      required_team_size: n,
      fail_count: 0,
      quest_result: 'unknown',
      started: false,
      completed: false
    })}
  end

  def set_player_roles
    role_deck = []
    base_bad = {role: "baddie", team: "evil"}
    base_good = {role: "goodie", team: "good"}
    pn = self.player_number
    players = self.room.players
    if pn >= 5 && pn <=6
      2.times.each{|n| role_deck.push(base_bad)}
      (pn - 2).times.each{|n| role_deck.push(base_good)}
    elsif pn >= 7 && pn <= 9
      3.times.each{|n| role_deck.push(base_bad)}
      (pn - 3).times.each{|n| role_deck.push(base_good)}
    elsif pn == 10
      4.times.each{|n| role_deck.push(base_bad)}
      (pn - 4).times.each{|n| role_deck.push(base_good)}
    end
    role_deck.shuffle!
    players.each_with_index{|player, i|
      player.update(role_deck[i])
    }
  end
end
