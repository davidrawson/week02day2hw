class River

  def initialize(river_name)
    @river_name = river_name
    @fish_in_river = []
  end

  def get_name()
    return @river_name
  end

  def add_fish(fish)
    @fish_in_river.push(fish)
  end

  def remove_fish
    eaten_fish = @fish_in_river.pop()
    eaten_fish.kill_fish
    return eaten_fish
  end

  def number_of_fish
    return @fish_in_river.count
  end

  def number_of_living_fish
    count = 0
    for fish in @fish_in_river
      count +=1 if fish.get_fish_status == false
    end
    return count
  end
end
