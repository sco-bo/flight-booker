class AddFlightToPassenger < ActiveRecord::Migration
  def change
    add_reference :passengers, :flight, index: true, foreign_key: true
  end
end
