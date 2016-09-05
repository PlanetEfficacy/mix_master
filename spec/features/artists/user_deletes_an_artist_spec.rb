# As a user
# Given that an artist exists in the database
# When I visit that artist's show page
# And I click on "Delete"
# Then I should be back on the artist index page
# Then I should not see the artist's name
require 'rails_helper'

RSpec.feature "A User deletes an artist" do
  scenario "They can visit an artist's page, click on delete, delete the artist from the database, and return to the index page" do
    artist_name = "Motzart"
    artist_path = "https://upload.wikimedia.org/wikipedia/commons/1/1e/Wolfgang-amadeus-mozart_1.jpg"
    artist = Artist.create(name: artist_name, image_path: artist_path)

    visit artist_path(artist)
    click_on "Delete"

    expect(page).to have_no_content("Motzart")
  end
end
