require 'pry'


ages = [24, 30, 18, 20, 41]

sum = ages.sum

count = ages.count

average = sum/count.to_f.round(2)

differences = []
ages.each do |age|
  differences << age - average
end

squares = []
differences.each do |difference|
  squares << difference**2
end


squared_sum = squares.sum

divided_sum = squared_sum / count

puts Math.sqrt(divided_sum).round(2)
