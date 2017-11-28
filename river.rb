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
    return @fish_in_river.pop()
  end

  def number_of_fish
    return @fish_in_river.count
  end


end
