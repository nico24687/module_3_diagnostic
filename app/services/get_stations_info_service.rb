class GetStationsInfoService 
  def perform(zipcode)
    api_key = ENV['nrel_key']

    response = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?&api_key=#{api_key}&location=#{zipcode}&limit=10&fuel_type=ELEC,LPG&radius=6.0")

    body = JSON.parse(response.body)

    body["fuel_stations"].map do |station|
      Station.new(station)
    end


  end
end