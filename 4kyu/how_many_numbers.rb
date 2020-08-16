def find_all(n, k)
  arr_numb = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  arr_combination = arr_numb.repeated_combination(k)
  possible_numbers = arr_combination.select {|elem| elem.sum == n}
  return [] if possible_numbers.empty?
  amount_numbers = possible_numbers.size
  min_number = possible_numbers.min.join.to_i
  max_number = possible_numbers.max.join.to_i
  [amount_numbers, min_number, max_number]
end

# kata solution
#
# def find_all(n, k)
#  p = (1..9).to_a.repeated_combination(k).select { |c| c.inject(:+) == n }
#  p.empty? ? [] : [p.size, p.min.join.to_i, p.max.join.to_i]
# end
#
#
#
# def find_all(sum, digits)
#   return [] if digits.zero?
#   asc_digits = [*1..9].repeated_combination(digits).to_a.map { |e| e.join.to_i }
#   valid_nums = asc_digits.select { |number| number.digits.reduce(:+) == sum }
#   valid_nums.empty? ? [] : [valid_nums.count, valid_nums.min, valid_nums.max]
# end
#
#
#
#def find_all(n, k)
#   ps = parts(n, k, 1)
#   return [] if ps.empty?
#   [ps.length, value(ps[0]), value(ps[-1])]
# end
#
# def value(xs)
#   xs.reduce(0) {|a, b| 10*a + b}
# end
#
# def parts(s, n, p)
#   return [] if s < p
#   return s < 10 ? [[s]] : [] if n == 1
#   a = []
#   (p..9).each {|i| parts(s - i, n - 1, i).each {|xs| a << xs.insert(0, i)}}
#   a
# end
#
#
#
# def find_all(n, k)
#     #your code here
#     arr = (1..9).to_a
#     combinations = arr.repeated_combination(k).to_a
#     accepted = combinations.select do |array|
#       array.reduce(&:+) == n
#     end
#     answer = accepted.size == 0 ? [] : [accepted.length,accepted.first.join.to_i,accepted.last.join.to_i]
# end
#
#
#
# def find_all(n, k)
#   return [] unless n <= 9*k
#
#   final = [1,2,3,4,5,6,7,8,9].repeated_combination(k).reject do |x|
#     x.reduce(:+) != n
#   end
#
#   return final.empty? ? [] : [final.count, final.first.join.to_i, final.last.join.to_i]
# end
#
#
#
# 