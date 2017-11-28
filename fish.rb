class Fish

  def initialize(fish_name)
    @fish_name = fish_name
    @fish_status = true
  end

  def get_name
    return @fish_name
  end

  def kill_fish
    @fish_status = false
  end

  def get_fish_status
    return @fish_status
  end

end
