require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../room.rb")
require_relative ("../song.rb")
require_relative("../guest.rb")

class TestRoom < MiniTest::Test

  def setup

    @song1 = Song.new("My heart will go on")
    @song2 = Song.new("My way")
    @song3 = Song.new("Wonderwall")

    @guest1 = Guest.new("Celine", 1)
    @guest2 = Guest.new("Frank", 1)
    @guest3 = Guest.new("Liam", 1)

    @room1 = Room.new("room 1", [@song1, @song2], 0)
    @room2 = Room.new("room 1", [@song1, @song2], 1)


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

  def test_remove_song
    @room1.remove_song(@song2)
    assert_equal([@song1], @room1.room_song())
  end

  def test_add_guest
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.guest_number())
  end

  # def test_add_guest
  #   @room1.add_guest(@guest1, @guest2)
  #   assert_equal(2, @room1.guest_number())
  # end - why won't this work?

  def test_remove_guest
    @room2.remove_guest(@guest1)
    assert_equal(0, @room1.guest_number)
  end

end
