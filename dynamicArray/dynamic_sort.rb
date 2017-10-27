n,q = gets.strip.split(' ').map(&:to_i)
last_answer = 0
queries = []
sequences = []
q.times do
  queries << gets.strip.split(' ').map(&:to_i)
end

queries.each do |query|
  op, x, y = query
  index = (x ^ last_answer) % n
  sequences[index] ||= []
  current_sequence = sequences[index]
  if op.eql?(1)
    current_sequence << y
  else
    last_answer =  current_sequence[y % current_sequence.size] if current_sequence.size > 0
    puts last_answer
  end
end