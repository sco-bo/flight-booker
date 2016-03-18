class PassengerMailer < ApplicationMailer
  default from: "from@example.com"

  def confirmation_email(passenger)
    @passenger = passenger
    @url = 'http://example.com/login'
    mail(to: @passenger.email, subject: 'Flight Confirmation')
  end
end
