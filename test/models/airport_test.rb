require 'test_helper'

class AirportTest < ActiveSupport::TestCase
  
  def setup
    @flight = flights(:two)
    @airport = airports(:iad)
    @return_flight = flights(:four)
  end

  test "should be valid" do 
    assert @airport.valid?
  end

  test "departing flights should include appropriate flight" do 
    assert @airport.departing_flights.include?(@flight)
  end

  test "arriving flights should include appropriate flight" do 
    assert @airport.arriving_flights.include?(@return_flight)
  end
end
