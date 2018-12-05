class QuestPlayerController < ApplicationController
  before_action :set_quest_player, only: [:update]

  def create
    quest_player = QuestPlayer.create(quest_player_params)
    render json: quest_player, status: 201
  end

  def update
    @quest_player.update(quest_player_params)
  end

  private
  def quest_player_params
    params.permit(:player_id, :round_id, :choice)
  end

  def set_quest_player
    @quest_player = QuestPlayer.find(params[:id])
  end
end
