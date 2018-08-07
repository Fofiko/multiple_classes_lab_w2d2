require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")

class BussTest < Minitest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
  end


  def test_has_route
    assert_equal(22, @bus.route)
  end

  def test_has_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_can_drive
    assert_equal("Brum brum", @bus.drive)
  end


  def test_passenger_count
    assert_equal(0, @bus.passenger_count)
  end

end
