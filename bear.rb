class Bear

  def initialize(bear_name)
    @name = bear_name
    @bear_stomach = []

  end

  def get_name
    return @name
  end

  def take_fish(fish)
    @bear_stomach.push(fish) if !fish.nil? # nice check to find if the river has fish
  end

  def stomach_count
    return @bear_stomach.count
  end

  def regurgitate_fish
    return @bear_stomach.pop
  end

end
