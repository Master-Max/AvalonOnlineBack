class SessionsController < ApplicationController
  def create
    player = Player.find_by(player_params)
    if player
      log_in(player.id)
    end
  end

  def destroy
    reset_session
  end

  private
  def player_params
    params.require(:player).permit(:name)
  end
end
