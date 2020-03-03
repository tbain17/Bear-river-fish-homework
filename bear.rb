class Bear
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def add_fish_to_bear(fish)
    @stomach.push(fish)
  end

  def count_fish_in_stomach()
    return @stomach.length()
  end


  def take_fish_from_river(river, caught_fish)
    for fish in river.fish
      if caught_fish == fish
        add_fish_to_bear(fish)
        river.fish.delete(fish)
      end
    end
  end

  def roar()
    return "ROAR!"
  end




end
