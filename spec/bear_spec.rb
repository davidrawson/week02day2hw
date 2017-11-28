require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Theodore")
    @river = River.new("Yukon")
    @fish = Fish.new("Bubbles")
  end

  def test_bear_name
    assert_equal("Theodore", @bear.get_name)
  end

  def test_take_fish_from_river
    @river.add_fish(@fish)
    @river.add_fish(@fish)
    @bear.take_fish
    assert_equal(1, @river.number_of_fish)
  end





end
