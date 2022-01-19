class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    room = Room.new(room_params)
    if room.save!
      redirect_to room_path(room), notice:"新しいルームを登録しました。"
    else
      render new
    end
  end

  private

    def room_params
      params.require(:room).permit(:room_name, :room_introduction, :fee, :address, :room_image)
    end

end

