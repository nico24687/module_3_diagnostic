require 'rails_helper'

describe GetStationsInfoService  do 
  it "returns information for the stations of a given zipcode" do 
    zipcode = 80203
    
    stations = VCR.use_cassette("services/get_stations_info_service") do 
      GetStationsInfoService.new.perform(zipcode)
    end 

    station = stations.first 

    expect(stations.count).to eq(20)
    expect(station.fuel_type_code).to eq("ELEC")
  end
end