require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../guest.rb")
require_relative("../room.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Celine", 1)
    @guest2 = Guest.new("Frank", 1)
    @guest3 = Guest.new("Liam", 1)
  end

  def test_guest_name
    assert_equal("Celine", @guest1.guest_name())
  end

  def test_number
    assert_equal(1, @guest1.number())
  end

end
