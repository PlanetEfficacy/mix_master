# As a user
# Given that artists exist in the database
# When I visit the artists index
# Then I should see each artist's name
# And each name should link to that artist's individual page
require 'rails_helper'

RSpec.feature "User vists the artists index" do
  scenario "They see each artist's name and each name should link to that artist's individual page" do

    artist_name = "Phish"
    artist_image_path = "http://phish.com/wp-content/uploads/2016/07/039_160715_phish_gorge_rene_huemer_N4A7943.jpg"
    Artist.create(name: artist_name, image_path: artist_image_path)

    visit artists_path

    first('.artist > a').click

    expect(page).to have_content "Phish"
    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
  end


end
