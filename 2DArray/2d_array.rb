#!/bin/ruby
a = []
max = -63
6.times { a << gets.strip.split(' ').map(&:to_i) }
i = 1
while (i < 5)
  j = 1
  while (j < 5)
    total = a[i][j]
    [-1,1].each do |d|
      [-1,0,1].each do |k|
        total += a[i+d][j+k]
      end
    end
    max = total if total > max
    j += 1
  end
  i += 1
end
puts max
