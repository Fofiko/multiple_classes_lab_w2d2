class Bus

  attr_reader :route, :destination

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum brum"
  end

  def passenger_count
    return @passengers.length()
  end

  def pick_up(person)
    @passengers << person
  end

end
