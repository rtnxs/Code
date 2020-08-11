def smallest(n)
  result = []
  size = n.to_s.size
  (0..size - 1).each do |orig|
    (0..size - 1).each do |dest|
      str = n.to_s
      char = str.slice!(orig)
      option_number = str.insert(dest, char).to_i
      result = [option_number,orig,dest] if (result.empty? || option_number < result[0] )
    end
  end
  result
end

# kata solution
# def smallest(n)
#   n = n.to_s.chars
#   [*(0...n.length)].permutation(2).map {|i, j|
#     m = n.dup
#     m.insert j, m.delete_at(i)
#     [m.join.to_i, i, j]
#   }.min_by &:first
# end
#
#
#
# def smallest n
#   s = n.to_s.each_char.with_index
#   s.flat_map{|_,i|
#     s.map{|_,j|
#       x = n.to_s.chars
#       [x.insert(j, x.delete_at(i)).join.to_i, i, j]
#     }
#   }.min
# end
