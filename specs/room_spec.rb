require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../room.rb")
require_relative ("../song.rb")

class TestRoom < MiniTest::Test

  def setup

    @song1 = Song.new("My heart will go on")
    @song2 = Song.new("My way")
    @song3 = Song.new("Wonderwall")

    @room1 = Room.new("room 1", [@song1, @song2])


  end

  def test_room_name
    assert_equal("room 1", @room1.room_name())
  end

  def test_room_song
    assert_equal([@song1, @song2], @room1.room_song())
  end

  def test_add_song
    @room1.add_song(@song3)
    assert_equal([@song1, @song2, @song3], @room1.room_song())
  end

end
