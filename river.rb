class River
  attr_reader :name, :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def add_fish_to_river(fish)
    @fish.push(fish)
  end

  def count_fish_in_river()
    return @fish.count()
  end

  def remove_fish_from_river(fish)
    @fish.delete(fish)
  end

end
