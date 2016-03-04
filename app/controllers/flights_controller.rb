class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map{|i| [i.code, i.id] }
    @date_options = Flight.all.sorted.map{|n| [n.date_formatted, n.start_time] }
    @flights = Flight.search(params)
  end
end
