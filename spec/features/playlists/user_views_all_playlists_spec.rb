require 'rails_helper'

RSpec.feature "User views all playlists" do
  scenario "they see the page with all playlists" do
    # song_one, song_two, song_three = create_list(:song, 3)
    playlist_one, playlist_two, playlist_three = create_list(:playlist, 3)

    visit playlists_path

    playlists.each do |playlist|
      expect(page).to have_link playlist.name, href: playlist_path(playlist)
    end

  end

end
