require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Nile")

    @fish1 = Fish.new("Potato")
    @fish2 = Fish.new("Lemon")
    @fish3 = Fish.new("Pete")

  end

  def test_river_has_name()
    assert_equal("Nile", @river.name)
  end

  def test_count_fish_in_river()
    assert_equal(0, @river.count_fish_in_river())
  end

  def test_add_fish_to_river()
    @river.add_fish_to_river(@fish1)
    assert_equal(1, @river.count_fish_in_river)
  end

    def test_remove_fish_from_river()
      @river.add_fish_to_river(@fish1)
      @river.add_fish_to_river(@fish2)
      @river.remove_fish_from_river(@fish2)
      assert_equal(1, @river.count_fish_in_river)
  end

end
