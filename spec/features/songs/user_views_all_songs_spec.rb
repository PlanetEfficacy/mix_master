require 'rails_helper'

# As a user
# Given that songs exist in the database
# When I visit the songs index ('/songs')
# Then I should see the titles of all songs in the database sorted alphabetically
# And the titles should each link the individual song page
RSpec.feature "User visits the songs index" do
  scenario "They see song titles linked to song pages" do
    artist = create(:artist)
    song = artist.songs.create(title: "No Woman No Cry")
    song2 = artist.songs.create(title: "Buffalo Soldier")

    visit artist_songs_path(artist.id)
    first('.songs > a').click

    expect(page).to have_content "Buffalo Soldier"
  end
end
