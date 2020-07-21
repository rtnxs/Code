def find_it(seq)
  seq.find { |n| seq.count(n).odd? } # аналог метода find метод detect
end

# kata solution
# def find_it(seq)
#   seq.reduce(:^)
# end
#
#
# def find_it(seq)
#   seq.uniq.each do |val|
#     return val if seq.count(val).odd?
#   end
# end
#
#
# def find_it(seq)
#   seq.each do |i|
#     if seq.count(i) % 2 != 0
#       return i
#     end
#   end
# end
#
#
# def find_it(seq)
#   seq.uniq.each{|x| return x if seq.count(x).odd?}
# end
