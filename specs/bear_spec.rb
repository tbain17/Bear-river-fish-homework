require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Winnie","Pooh")

    @fish1 = Fish.new("Clive")
    @fish2 = Fish.new("Jellybean")
    @fish3 = Fish.new("Doris")

  end


  def test_bear_has_name()
    assert_equal("Winnie", @bear.name)
  end

  def test_bear_has_type()
    assert_equal("Pooh", @bear.type)
  end

  def test_add_fish_to_bear()
    @bear.add_fish_to_bear(@fish3)
    assert_equal(1, @bear.count_fish_in_stomach)
  end

  def test_count_fish_in_stomach()
    @bear.add_fish_to_bear(@fish2)
    assert_equal(1, @bear.count_fish_in_stomach)
  end

  def test_bear_takes_fish_from_river()
    river = River.new("Thames")
    river.add_fish_to_river(@fish1)
    river.add_fish_to_river(@fish2)
    river.add_fish_to_river(@fish3)
    @bear.take_fish_from_river(river, @fish2)
    assert_equal(2, river.count_fish_in_river)
    assert_equal(1, @bear.count_fish_in_stomach)
  end

  def test_roar()
    assert_equal("ROAR!", @bear.roar)
  end

end
