require 'rails_helper'



describe "user searches by a particulalr zipcode" do 
  it "sees th infomration about those stations in that zipcode" do 
    visit "/"

    fill_in "q", with: 80203

    VCR.use_cassette("services/get_stations_info_service") do
      click_on "Locate"
    end

    expect(current_path).to eq(search_path)
    expect(page).to have_content("count: 20")
    expect(page).to have_content("energy type: ELEC")
    expect(page).to have_content("hours: 24 hours daily")
    expect(page).to have_content("name: UDR")
    expect(page).to have_content("address: 800 Acoma St")
    expect(page).to have_content("distance: a random distance")
  end
end


# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times