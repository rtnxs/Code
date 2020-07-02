def high_and_low(numbers)
   numbers = numbers.split.map {|n| n.to_i}.sort
   n1=[] << numbers[-1] << numbers[0]
   numbers = n1
  p numbers.join(" ")
end
high_and_low("-1 2 -3 4 -5 4 9 10")

# kata solution
# def high_and_low(numbers)
#   numbers.split.map(&:to_i).minmax.reverse.join(' ')    #&:  способ передать блок
# end
#   high_and_low("-1 2 -3 4 -5 4 9 10")

# def high_and_low(numbers)
#   numbers = numbers.split.map(&:to_i)
#   p "#{numbers.max} #{numbers.min}"
# end
#   high_and_low("-1 2 -3 4 -5 4 9 10")
#
# def high_and_low(numbers)
#   a = numbers.split.map(&:to_i).sort
#   p  "#{a.last} #{a.first}"
# end
#   high_and_lo2("-1 2 -3 4 -5 4 9 10")
#
# def high_and_low(numbers)
#   p  numbers.split.minmax_by(&:to_i).reverse.join(' ')
# end
#   high_and_low("-1 2 -3 4 -5 4 9 10")
