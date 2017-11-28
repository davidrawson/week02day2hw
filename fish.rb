class Fish

  def initialize(fish_name)
    @fish_name = fish_name
    @fish_status = true
  end

  def get_name
    return @fish_name
  end

  def get_fish_status
    return @fish_status
  end

 def set_fish_status(boolean)
   @fish_status = boolean
 end

end
