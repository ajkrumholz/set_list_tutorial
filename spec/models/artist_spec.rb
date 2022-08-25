require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      before :each do
        @prince = Artist.create!(name: 'Prince')
        @purple = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 153256)
        @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 665, play_count: 52215)
        @nothing = @prince.songs.create!(title: 'Nothing Compares 2 U', length: 1, play_count: 52215)
      end

      it 'returns the average song length' do
        expect(@prince.average_song_length.round(2)).to eq(503.67)
      end
    end
  end
end