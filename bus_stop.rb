class BusStop

attr_reader :name



  def initialize(name)
    @name = name
    @queue = []
  end

  def queue_count
    return @queue.length()
  end

  def join_queue(person)
    @queue << person
  end


end
