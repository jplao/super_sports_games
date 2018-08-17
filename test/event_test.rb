require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'
require './lib/games'

class EventTest < Minitest::Test

  def test_check_it_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_instance_of Event, event
  end

  def test_name_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    expected = "Curling"
    actual = event.name
    assert_equal expected, actual
  end

  def test_ages_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    expected = [24, 30, 18, 20, 41]
    actual = event.ages
    assert_equal expected, actual
  end

  def test_it_can_get_max_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    expected = 41
    actual = event.max_age
    assert_equal expected, actual
  end

  def test_it_can_get_min_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    expected = 18
    actual = event.min_age
    assert_equal expected, actual
  end

  def test_it_can_get_average_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    expected = 26.6
    actual = event.average_age
    assert_equal expected, actual
  end

  def test_it_can_get_standard_deviation_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    expected = 8.28
    actual = event.standard_deviation_age
    assert_equal expected, actual
  end


end
