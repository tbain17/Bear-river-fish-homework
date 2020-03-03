require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Rapunzel")
  end

  def test_fish_has_name()
    assert_equal("Rapunzel", @fish.name)
  end

end
