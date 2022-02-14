class ReservationsController < ApplicationController
  def index
  end

  def new
    @room = Room.find(params[:id])
    binding.pry
    @reservation = Reservation.new(reservation_params)
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
    params.require(:reservation).permit(:start, :end_date, :guests, :fee)
  end
end
