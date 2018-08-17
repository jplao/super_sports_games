require 'pry'
class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
     ages.sort.last.to_i
  end

  def min_age
    ages.sort.first.to_i
  end

  def average_age
    sum = ages.sum
    count = ages.count
    sum/count.to_f.round(2)
  end

  def standard_deviation_age
    sum = ages.sum
    count = ages.count
    average = sum/count.round(1)

    differences = []
    ages.each do |age|
      difference = age - average
      differences << difference.round(1)
    end
    differences

    squares = []
    differences.each do |difference|
      square = difference**2
      squares << square.round(2)
    end
    squares

    squared_sum = 0
    squares.each do |square|
      squared_sum += square
    end

    squared_sum.round(1)

    divided_sum = squared_sum/count
    divided_sum.round(2)

    Math.sqrt(divided_sum).round(2)
  end
end
