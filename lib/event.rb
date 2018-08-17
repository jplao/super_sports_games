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
    number = ages.count
    sum/number.to_f.round(2)
  end

  def standard_deviation_age
    ages_total    = summed_ages
    age_differences  = average_differences(ages)
    squares       = squared_differences(age_differences)
    squared_sum   = squares_total(squares)
    divided_total = divided_sum(squared_sum)
    Math.sqrt(divided_total).round(2)
  end

  def summed_ages
    ages_total = 0
    ages.each do |age|
      ages_total += age
    end
    ages_total
  end

  def average_differences(ages)
    age_differences = []
    ages.each do |age|
      difference = age - average_age
      age_differences << difference.round(1)
    end
    age_differences
  end

  def squared_differences(age_differences)
    squares= []
    age_differences.each do |difference|
      squared = difference**2
      squares << squared.round(2)
    end
    squares
  end

  def squares_total(squares)
    squared_sum = 0
    squares.each do |square|
      squared_sum += square
    end
    squared_sum.round(1)
  end

  def divided_sum(squared_sum)
    divided_total = squared_sum / (ages.count)
    divided_total.round(2)
  end

end
