n = gets.strip.to_i
strings = []
n.times { strings << gets.strip }
q = gets.strip.to_i
results = []
q.times { results << strings.count(gets.strip) }
results.each { |result| puts result }
