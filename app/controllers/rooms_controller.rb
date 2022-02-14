class RoomsController < ApplicationController
  def index
    @rooms = current_user.rooms
  end

  def new
    @room = Room.new
  end

  def create
    room = Room.new(room_params.merge(user_id: current_user.id))
    if room.save!
      redirect_to rooms_path, notice:"新しいルームを登録しました。"
    else
      render new
    end
  end

  def show
    @room = Room.find(params[:id])
    @reservation = Reservation.new
  end

  private

    def room_params
      params.require(:room).permit(:room_name, :room_introduction, :fee, :address, :room_image)
    end

end

