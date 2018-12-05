class PlayersController < ApplicationController
  def index
    players = Player.all
    render json: players
  end

  def create
    player = Player.create(player_params)
    ActionCable.server.broadcast "room_#{player.room_id}", { title: 'New Player', body: player }
    render json: player, status: 201
  end

  private
  def player_params
    params.permit(:name, :room_id)
  end

end
