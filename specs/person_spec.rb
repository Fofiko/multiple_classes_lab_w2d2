require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class PersonTest < Minitest::Test

  def setup
    @person = Person.new("Bob", 20)
  end

  def test_has_name
    assert_equal("Bob", @person.name)
  end

  def test_has_age
    assert_equal(20, @person.age)
  end


end
