def removNb(n)
  arr_sum = (1..n).to_a.sum
  results = []
  (1..n).each do |elem|
    s ||= 0
    s = (arr_sum - (elem + s)) / elem
    results << [s, elem] << [elem, s] if elem * s == arr_sum - (elem + s)
  end
  results.sort!
end

# kata solution

# def removNb(n)
#   (1..n).each.with_object([]) do |a, results|
#     b, remainder = (n*(n+1)/2-a).divmod(a+1)
#     results << [a,b] if remainder == 0 && b < n
#   end
# end



# def removNb(n)
#   result = []
#   sum = (1..n).to_a.reduce(:+)
#   (n/2..n).map{ |x| result << [x, (sum - x) / (x + 1)] if (sum - x) % (x + 1) == 0}
#   result
# end



# def removNb(n)
#     s = n*(n+1)/2
#     (2..n).inject([]) do |acc, a|
#         b = (s-a)/(a + 1.0)
#         b.to_i.between?(b, n) ? acc.push([a, b.to_i]) : acc
#     end
# end



# def removNb(n)
#   res = []
#   total = (n*n + n) / 2
#   range = (1..n)
  
#   (1..n).each do |a|
#     b = ((total - a) / (a * 1.0 + 1.0))
#     if b == b.to_i && b <= n
#       res.push([a,b.to_i])
      
#     end
#   end
 
  
#   return res
# end



# def removNb(n)
#   sum = (1..n).reduce(:+)
#   from = Math.sqrt(n).floor

#   (from..n).reduce([]) do |res, first_num|
#     second_num, rest = (sum - first_num).divmod(first_num + 1)
#     (rest.zero? and second_num <= n) ? res << [first_num, second_num] : res
#   end
# end

