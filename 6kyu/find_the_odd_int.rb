def find_it(seq)
  seq.find { |n| seq.count(n).odd? }   # аналог метода find метод detect
end
p find_it(array=[20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])

# kata solution
# def find_it(seq)
#   seq.reduce(:^)
# end
# find_it(array=[20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])

# def find_it(seq)
#   seq.uniq.each do |val|
#     return val if seq.count(val).odd?
#   end
# end
# find_it(array=[20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])

# def find_it(seq)
#   seq.each do |i|
#     if seq.count(i) % 2 != 0
#       return i
#     end
#   end
# end
# find_it(array=[20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])

# def find_it(seq)
#   seq.uniq.each{|x| return x if seq.count(x).odd?}
# end
# find_it(array=[20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
