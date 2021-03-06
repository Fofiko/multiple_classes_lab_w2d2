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

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty
    @passengers = []
  end

  def pick_up_from_stop(bus_stop)
    @passengers.concat(bus_stop.queue)
    bus_stop.empty_queue
  end



end
