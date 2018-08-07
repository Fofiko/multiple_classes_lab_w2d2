class BusStop

attr_reader :name, :queue



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


  def empty_queue
    @queue = []
  end








end
