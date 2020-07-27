a = (1..5000).to_a
count2 = 0

5000.times do
  count = 0
  45000.times do
    count += 1 if a.sample == 1
  end
  count2 += 1 if count == 0
  # puts count
end

puts count2