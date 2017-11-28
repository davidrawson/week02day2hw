require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")
require_relative("../river")

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("Gulp")
    @river = River.new("Yukon")
  end

  def test_fish_name
    assert_equal("Gulp", @fish.get_name)
  end

  def test_kill_fish
    killed_fish = @river.remove_fish
    assert_equal(false, killed_fish.get_fish_status)
  end
end
