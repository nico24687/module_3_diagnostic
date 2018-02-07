require 'rails_helper'

describe Station do 
  it "contains the required information" do 
    station = Station.new("fuel_type_code" => "random fuel", "access_days_time" => "never enter", "station_name" => "random name", "street_address" => "random address", "distance" => "random distance")
    
    expect(station.fuel_type_code).to eq("random fuel")
    expect(station.access_days_time).to eq("never enter")
    expect(station.station_name).to eq("random name")
    expect(station.street_address).to eq("random address")
    expect(station.distance).to eq("random distance")
  end
end