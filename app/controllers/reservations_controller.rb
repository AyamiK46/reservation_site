class ReservationsController < ApplicationController
  def index
  end

  def new
    @room = Room.find(params[:id])
    @reservation = Reservation.new(reservation_params)
    render "rooms/show" if @reservation.invalid?
  end

  def create 
    @reservation = Reservation.new(reservation_params)
    render "rooms/show" and return if params[:back] || @user.save!
    redirect_to @reservation
  end

  def show
    @room = Room.find_by(id: params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start, :end_date, :guests, :fee).merge(user_id: current_user.id, room_id: @room.id)
  end

end
