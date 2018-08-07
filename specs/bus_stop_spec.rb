require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BussStopTest < Minitest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @Bob = Person.new("Bob", 20)
    @Sally = Person.new("Sally", 60)
    @bus_stop = BusStop.new("Stockbridge")
  end

  def test_get_bus_stop_name
    assert_equal("Stockbridge", @bus_stop.name)
  end

  def test_get_queue_count
    assert_equal(0, @bus_stop.queue_count)
  end

  def test_join_queue
    @bus_stop.join_queue(@Sally)
    assert_equal(1, @bus_stop.queue_count)
  end

  def test_empty_queue
    @bus_stop.join_queue(@Sally)
    @bus_stop.join_queue(@Bob)
    @bus_stop.empty_queue()
    assert_equal(0, @bus_stop.queue_count)
  end


  def test_pick_up_from_stop
    @bus_stop.join_queue(@Sally)
    @bus_stop.join_queue(@Bob)
    @bus.pick_up_from_stop(@bus_stop)
    assert_equal(0, @bus_stop.queue_count)
    assert_equal(2, @bus.passenger_count)
  end


end
