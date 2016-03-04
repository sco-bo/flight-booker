class ChangeStartTimeTypeInFlights < ActiveRecord::Migration
  def self.up
    change_column :flights, :start_time, :date
  end

  def self.down
    change_column :flights, :start_time, :datetime
  end
end
