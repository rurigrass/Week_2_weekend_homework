require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../song.rb")
require_relative ("../room.rb")

class TestSong < MiniTest::Test

  def setup

    @song1 = Song.new ("My heart will go on")
    @song2 = Song.new ("My way")
    @song3 = Song.new ("Wonderwall")

  end

def test_song_name
  assert_equal("My heart will go on", @song1.song_name())
end

end
