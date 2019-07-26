class BookingsController < ApplicationController
  def new
    @flight = Flight.find_by(id: params[:booking][:flight_id])
    @booking = Booking.new
    number_passengers = params[:booking][:number_passengers].to_i
    number_passengers.times { @booking.passengers.build }

  end

  def show
    @booking = Booking.find(params[:id])
  end


  def create

    @booking = Booking.create(booking_params)
    if @booking.save
    redirect_to @booking
  else
    redirect_to 'new'
  end
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end


end
