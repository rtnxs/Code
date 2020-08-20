def snail(array)
  snailified = []
  while array.length != 0
    snailified << array.shift
    array = array.transpose.reverse
  end
  return snailified.flatten
end

# kata solution
#
# def snail(array)
#   array.empty? ? [] : array.shift + snail(array.transpose.reverse)
# end
#
#
#
# def snail(array)
#   return [] if array.empty?
#   result = array.shift
#   result + snail(array.transpose.reverse)
# end
#
#
#
#
# def snail(matriz)
#   result = []
#   step = 0
#   while matriz.size > 0
#     step = 0 if step > 3
#     case step
#       when 0
#         result += matriz.shift
#       when 1
#         result += matriz.map{ |x| x.pop }
#       when 2
#         result += matriz.pop.reverse
#       when 3
#         result += matriz.map{ |x| x.shift }.reverse
#     end
#     step += 1
#   end
#   result
# end
#
#
#
# def snail m
#   return m[0] if m.length == 1
#   def transpose m
#     m[0].map.with_index { |_, i| m.map {|r| r[i]} }
#   end
#   def rotate m
#     transpose(m).reverse
#   end
#   m[0] + snail(rotate m[1...m.length])
# end
#
#
#
#
# def snail(array)
#   result = []
#   while (array.length > 0) do
#     result.push(*(array.shift))
#     array.each { |line|
#       result.push(line.pop)
#     }
#     result.push(*((array.pop || []).reverse))
#     array.reverse.each { |line|
#       result.push(line.shift)
#     }
#   end
#   result
# end
#
#
#
#
# def snail(array)
#   methods = {
#     left: def left(array) array.shift end,
#     down: def down(array) array.map(&:pop) end,
#     right: def right(array) array.pop.reverse end,
#     up: def up(array) array.reverse.map(&:shift) end
#   }
#   trail = []
#   directions = methods.keys
#   while array.any?
#     dir = directions.push(directions.shift).last
#     trail << send(methods[dir], array)
#   end
#   trail.flatten
# end
