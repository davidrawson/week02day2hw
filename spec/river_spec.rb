require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")


class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Yukon")
    @fish = Fish.new("Bubbles")
  end

  def test_river_name
    assert_equal("Yukon", @river.get_name())
  end

  def test_number_of_fish
    @river.add_fish(@fish)
    assert_equal(1, @river.number_of_fish)
  end


end
