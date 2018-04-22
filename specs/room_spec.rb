require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../room.rb")
require_relative ("../song.rb")

class TestRoom < MiniTest::Test

  def setup

    @song1 = Song.new ("My heart will go on")
    @song2 = Song.new ("My way")
    @song3 = Song.new ("Wonderwall")

    @room1 = Room.new ("room 1", [@song1])


  end

  def test_room_name
    assert_equal("room 1", @room1.room_name())
  end

end
