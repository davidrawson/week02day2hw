require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")
require_relative("../river")
require_relative("../bear") # don't think I need this

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("Gulp")
    @river = River.new("Yukon")
  end

  def test_fish_name
    assert_equal("Gulp", @fish.get_name)
  end

  def test_set_fish_status
    @fish.set_fish_status(false)
    assert_equal(false, @fish.get_fish_status)
  end
end
