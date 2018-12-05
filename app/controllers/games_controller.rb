class GamesController < ApplicationController
  def create
    game = Game.new(game_params)
    game.current_round = 0
    game.make_rounds
    game.set_player_roles
    game.save
    ActionCable.server.broadcast "room_#{game.room_id}", { title: 'Updated Players', players: game.room.players}
    render json: game, status: 201
  end

  private
  def game_params
    params.permit(:room_id, :player_number)
  end
end
