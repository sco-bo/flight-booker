class Flight < ActiveRecord::Base
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"

  def date_formatted
    self.start_time.strftime("%a %b %d, %Y - %l:%M%P")
  end

  def self.sorted
    self.order(:start_time)
  end
end
