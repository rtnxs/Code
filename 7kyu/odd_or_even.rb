def odd_or_even(array)
 array.sum.abs.odd? ? 'odd' : 'even'
end

# kata solution
# def odd_or_even(array)
#   array.reduce(0, :+).even? ? 'even' : 'odd'
# end

# def odd_or_even(array)
#   array.reduce(0,:+).odd? ? "odd" : "even"
# end

# def odd_or_even(array)
#   x = array.inject(0){|sum,x| sum + x }
#   if x % 2 == 0
#     return "even"
#   else
#     return "odd"
#   end
# end

# def odd_or_even(array)
#   sum = 0
#   array.each{ |x| sum += x }
#   return sum%2 == 0 ? "even" : "odd"
# end
