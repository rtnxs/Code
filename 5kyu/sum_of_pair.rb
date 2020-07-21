def sum_pairs(ints, s)
  hash = {}
  ints.each_with_index do |el, _|
    return [hash[el], el] if hash[el]
    hash[s - el] = el
  end
  nil
end



# kata solution
# def sum_pairs(ints, s)
#   seen = {}
#   for i in ints do
#     return [s-i, i] if seen[s-i]
#     seen[i] = true
#   end
#   nil
# end



# def sum_pairs(ints, s)
#   passed = Set.new
#   ints.each {|int| passed.include?(s - int) ? (return [s - int, int]) : passed.add(int) } 
#   nil
# end



# def sum_pairs(ints, s)
#   res = nil
#   looking = {}

#   ints.each_with_index do |int, i|
#     solution = s - int

#     if !looking[int]
#       looking[int] = i
#      end
#     if looking[solution] && looking[solution] != i
#       res = [solution, int]
#       break
#     end
#   end
#   res
# end
