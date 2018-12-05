class VotesController < ApplicationController
  def create
    vote = User.create(vote_params)
    render json: vote, status: 201
  end

  private
  def vote_params
    params.permit(:player_id, :leader_id, :choice)
  end
end
