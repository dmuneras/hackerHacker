 t = gets.strip.to_i
n_cases = []

t.times do
  n_cases.push([gets.strip.to_i, gets.strip.split(' ').map(&:to_i)])
end

def solve_scenario(case_n)
  min = case_n.min
  min_values = [min, min-1, min-2]
  min_values.map! do |min_value|
    case_n.inject(0) do |steps, element|
      diff = element - min_value
      required_steps = 0
      [5,2,1].each do |decrement|
        required_steps += diff/decrement
        diff = diff % decrement
      end
      steps + required_steps
    end
  end
  min_values.min
end

n_cases.each do |case_n|
  case_n = case_n[1]
  puts solve_scenario(case_n)
end