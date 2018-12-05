class GameController < ApplicationController
  def create
    game = Game.new(game_params)
    game.current_round = 0
    game.save
    render json: game, status: 201
  end

  private
  def game_params
    params.permit(:room_id, :player_number)
  end
end
