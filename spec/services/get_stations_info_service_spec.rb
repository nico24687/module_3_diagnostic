require 'rails_helper'

describe GetStationsInfoService  do 
  it "returns information for the stations of a given zipcode" do 
    zipcode = 80203
    stations = GetStationsInfoService.new.perform(zipcode)
    station = stations.first 

    expect(stations.count).to eq(3)
    expect(station.fuel_type_code).to eq("ELEC")
  end
end