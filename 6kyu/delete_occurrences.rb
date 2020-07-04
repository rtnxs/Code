def delete_nth(order,max_e)
  res = []
  order.each { |num| res << num unless res.count(num) == max_e }
  res
end

# kata solution

# def delete_nth(order, max_e)
#   occurrences = Hash.new(0)
#   order.reject { |item| (occurrences[item] += 1) > max_e }
# end

# def delete_nth(order,max_e)
#   order.each_with_object([]) { |x, a| a.push(x) unless a.count(x) >= max_e }
# end

# def delete_nth(order, max_e)
#   dict = Hash.new 0
#   order.delete_if { |item| ( dict[item] += 1 ) > max_e }
# end

# def delete_nth(order,max_e)
#   order.select.with_index { |num, idx| order[0..idx].count(num) <= max_e }
# end

# def delete_nth(list,max)
#   list.reverse!.delete_if { |i| list.count(i) > max }.reverse!
# end

# def delete_nth(order,max_e)
#   order.select.with_index { |n, i| order.slice(0, i+1).count(n) <= max_e }
# end
