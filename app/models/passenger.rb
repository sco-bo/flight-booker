class Passenger < ActiveRecord::Base
  belongs_to :booking
  belongs_to :flight
end
