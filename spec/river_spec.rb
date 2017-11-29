require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")
require_relative("../bear")


class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Yukon")
    @fish = Fish.new("Bubbles")
    @fish2 = Fish.new("Gulp")
    @fish3 = Fish.new("Bait")
    @bear = Bear.new("Theodore")
  end

  def test_river_name
    assert_equal("Yukon", @river.get_name())
  end

  def test_number_of_fish
    @river.add_fish(@fish)
    assert_equal(1, @river.number_of_fish)
  end

  def test_remove_fish
    @river.add_fish(@fish)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.remove_fish
    @river.remove_fish
    assert_equal(1, @river.number_of_fish)
  end

  def test_number_of_living_fish
    @river.add_fish(@fish)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    # bear takes from river, killing fish  # bear eats fish
    @bear.take_fish(@river.remove_fish)
    # bear throws up fish   # into the river
    @river.add_fish(@bear.regurgitate_fish)
    assert_equal(3, @river.number_of_fish)
    assert_equal(2, @river.number_of_living_fish)
  end
end
