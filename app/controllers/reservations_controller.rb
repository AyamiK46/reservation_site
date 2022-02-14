class ReservationsController < ApplicationController
  def index
  end

  def new
    @room = Room.find(params[:id])
    @reservation = Reservation.new(reservation_params)
    render :new if @reservation.invalid?
  end

  def create 
    @reservation = Reservation.new(reservation_params)
    render :new and return if params[:back] || !@user.save
    redirect_to @reservation
  end

  def show
    @room = Room.find_by(id: params[:id])
  end

  private

  def reservation_params
    params.permit(:room_id, :user_id, :reservation_id, :start, :end, :guests, :fee )
  end
end
