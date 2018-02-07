class Station 
  attr_reader :fuel_type_code,
              :access_days_time,
              :station_name,
              :street_address

  def initialize(attributes={})
    @fuel_type_code = attributes["fuel_type_code"]
    @access_days_time = attributes["access_days_time"]
    @station_name = attributes["station_name"]
    @street_address = attributes["street_address"]
  end
end