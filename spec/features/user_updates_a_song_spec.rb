require 'rails_helper'

RSpec.feature "User visits the song's show page" do
  scenario "they can change the title of a song" do
    artist = create(:artist)
    song = artist.songs.create(title: "Buffalo Soldier")
    song_title = "No Woman No Cry"

    visit song_path(song.id)
    click_on "Edit"
    fill_in "song_title", with: song_title
    click_on "Update Song"

    expect(page).to have_content song_title
    expect(page).to have_link artist.name, href: artist_path(artist)
  end
end
