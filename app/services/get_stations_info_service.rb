class GetStationsInfoService 
  def perform(zipcode)
    [Station.new(fuel_type_code: "Wind"), Station.new(), Station.new()]
  end
end