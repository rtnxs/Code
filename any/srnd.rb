puts 'number'
n = gets.chomp.to_i
puts 'seed?'
sr = gets.chomp.to_i

def randm(n, sr)
  sr.zero? ? 5.times.map { rand(n) } : 5.times.map { srand sr; rand(n) }
end

p randm(n, sr)