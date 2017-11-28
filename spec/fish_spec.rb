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






end
