class PlayersController < ApplicationController
  def index
    players = Player.all
    render json: players
  end

  def create
    player = Player.new(player_params)
    if player.save
      log_in(player.id)
      ActionCable.server.broadcast "room_#{player.room_id}", { title: 'New Player', body: player }
      render json: player, status: 201
    end
  end

  private
  def player_params
    params.permit(:name, :room_id)
  end

end
