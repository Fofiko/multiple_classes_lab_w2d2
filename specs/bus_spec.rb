require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class BussTest < Minitest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @Bob = Person.new("Bob", 20)
    @Sally = Person.new("Sally", 60)
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

  def test_passenger_count__with_Bob_and_Sally
    @bus.pick_up(@Bob)
    @bus.pick_up(@Sally)
    assert_equal(2, @bus.passenger_count)
  end

  def test_passenger_count__with_Bob_and_Sally
    @bus.pick_up(@Bob)
    @bus.pick_up(@Sally)
    @bus.drop_off(@Bob)
    assert_equal(1, @bus.passenger_count)
  end



end
