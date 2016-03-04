class Flight < ActiveRecord::Base
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"

  def date_formatted
    self.start_time.strftime("%a %b %d, %Y")
  end

  def self.sorted
    self.order(:start_time)
  end

  def self.search(params)
    # formatted_start_time = self.start_time.formatted_to_s
    if params
      Flight.where(from_airport_id: params[:from_airport], to_airport_id: params[:to_airport], start_time: params[:start_time])
    else
      Flight.none
    end
  end
end
