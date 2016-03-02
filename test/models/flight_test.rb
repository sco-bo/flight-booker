require 'test_helper'

class FlightTest < ActiveSupport::TestCase
 
  def setup
    @from_airport = airports(:lax)
    @to_airport = airports(:ord)
    @flight = flights(:one)
  end

  test "should be valid" do 
    @flight.valid?
  end

  test "from airport is correct" do 
    assert_equal @flight.from_airport_id, @from_airport.id
  end

  test "to airport is correct" do 
    assert_equal @flight.to_airport_id, @to_airport.id
  end
end
