# As a user
# Given that an artist and a song for that artist exist in the database
# When I visit the artist's song index ('/artists/1/songs')
# And I click on "Delete"
# Then I should be back on whatever page I was on before (the artist's song index page)
# And I should not see the the song title
require 'rails_helper'

RSpec.feature "A User visits and artist's song index" do
  scenario "They can delete a song" do
    artist = create(:artist)
    song_1 = artist.songs.create(title: "No Woman No Cry")
    song_2 = artist.songs.create(title: "Buffalo Soldier")
    song_3 = artist.songs.create(title: "Trenchtown Rock")

    visit song_path(song_1.id)
    click_on "Delete"

    expect(page).to have_no_content("No Woman No Cry")
  end
end
