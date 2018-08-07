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


  def empty_queue
    @queue = []
  end

# ## undefined method??
#   def pick_up_from_stop(person)
#     @queue.delete(person)
#     @passengers << person
#   end




end
