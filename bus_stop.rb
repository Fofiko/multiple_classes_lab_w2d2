class BusStop

attr_reader :name



  def initialize(name)
    @name = name
    @queue = []
  end

  def queue_count
    return @queue.length()
  end


end
