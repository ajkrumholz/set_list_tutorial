require 'rails_helper'

RSpec.describe 'the songs show page' do
  it 'displays the song title' do
    artist = Artist.create!(name: 'Carly Rae Jepsen')
    song_1 = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 1539)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 301, play_count: 600203)

    visit "/songs/#{song_1.id}" 

    expect(page).to have_content(song_1.title)
  end

  xit 'displays the name of the artist for the song' do

  end
end