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



end
