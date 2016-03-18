class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.build
    params[:passengers].to_i.times {@booking.passengers.build }
    
    @booking.passengers.build if params[:passengers].blank? 
  end

  def create
    @current_flight = Flight.find(params[:flight_id])
    @booking = @current_flight.bookings.build(booking_params)
    
    if @booking.save
      @booking.passengers.each do |passenger|
        PassengerMailer.confirmation_email(passenger).deliver_later
      end      

      redirect_to @booking
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email, :flight_id])
    end
end
