class BookingsController < ApplicationController
  def new
    @flight_id = params[:booking][:flight_id]
    @number_passengers = params[:booking][:number_passengers]
    
  end
end
