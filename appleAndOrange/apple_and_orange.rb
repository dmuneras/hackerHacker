s,t = gets.strip.split(' ')
s = s.to_i
t = t.to_i
a,b = gets.strip.split(' ')
a = a.to_i
b = b.to_i
m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
apple = gets.strip
apple = apple.split(' ').map(&:to_i)
orange = gets.strip
orange = orange.split(' ').map(&:to_i)


apples_in_house = apple.inject(0) do | inside_house, distance|
  d = a + distance
  inside_house += 1 if (d >= s) && (d <= t)
  inside_house
end

orange_in_house = orange.inject(0) do | inside_house, distance |
  d = b + distance
  inside_house += 1 if (d <= t) && (d >= s)
  inside_house
end


print "#{apples_in_house}\n#{orange_in_house}"