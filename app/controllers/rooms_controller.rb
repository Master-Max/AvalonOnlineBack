class RoomsController < ApplicationController
  def index
    rooms = Room.all
    render json:rooms
  end

  def create
    room = Room.create(room_params)
    render json: room, status: 201
  end

  private
  def room_params
    params.permit(:name)
  end

end
