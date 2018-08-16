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
    average = sum/count.to_f

    differences = []
    ages.each do |age|
      differences << age - average
    end

    squares = []
    differences.each do |difference|
    squares << difference**2
    end

    squared_sum = squares.sum

    divided_sum = squared_sum/count

    Math.sqrt(divided_sum).round(2)
  end
end

binding.pry
