require 'pry'
ages = [24, 30, 18, 20, 41]

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

puts Math.sqrt(divided_sum).round(2)
