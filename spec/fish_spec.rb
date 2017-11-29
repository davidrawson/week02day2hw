require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("Gulp")
  end

  def test_fish_name
    assert_equal("Gulp", @fish.get_name)
  end

  def test_set_fish_status  # this requires comment fish: false = dead
    @fish.set_fish_status(false)                   #fish: true = alive
    assert_equal(false, @fish.get_fish_status)
  end
end
