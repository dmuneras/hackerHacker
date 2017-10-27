n = gets.strip.to_i
stack = []
results = []
n.times do
  query = gets.strip.split(' ')
  op = query[0].to_i
  if op.eql?(1)
    stack.push(query[1].to_i)
  elsif op.eql?(2)
    stack.pop
  else
    results << stack.max
  end
end
results.each { |result| puts result }