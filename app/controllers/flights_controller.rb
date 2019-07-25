class FlightsController < ApplicationController
  def index

    respond_to do |format|
      @airport_options = Airport.all.map { |a| a.code }
      format.html do
        @available_flights = []
      end
      format.js do
        to_airport = Airport.find_by(code: params[:flights][:to_airport])
        from_airport = Airport.find_by(code: params[:flights][:from_airport])
        start_date = Date.new(2019,params[:date][:month].to_i,
          params[:date][:day].to_i)
        #@flights = Flight.find_by(to_airport: to_airport,
        #                          from_airport: from_airport,
        #                          start_date: start_date)

        @available_flights = Flight.where("finish_id = ? AND start_id = ? AND start_date > ? AND start_date < ?",
                                  to_airport, from_airport, start_date, start_date.next)

      end
    end
  end


  def event_date_text
    event_date.strftime("%m/%d/%Y")
  end
end
