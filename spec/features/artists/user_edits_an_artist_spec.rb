# As a user
# Given that an artist exists in the database
# When I visit that artist's show page
# And I click on "Edit"
# And I fill in a new name
# And I click on "Update Artist"
# Then I should see the artist's updated name
# Then I should see the existing image
require 'rails_helper'

RSpec.feature "User vists the artist's show page" do
  scenario "They can click edit, fill in a new name, click update, and update the artist's name" do

    artist_name = "Phish"
    new_artist_name = "PHISH"
    artist_image_path = "http://phish.com/wp-content/uploads/2016/07/039_160715_phish_gorge_rene_huemer_N4A7943.jpg"
    artist = Artist.create(name: artist_name, image_path: artist_image_path)

    visit artist_path(artist.id)

    click_on "Edit"
    fill_in "artist_name", with: new_artist_name
    click_on "Update Artist"

    expect(page).to have_content "PHISH"
    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
  end


end
