def missing(s)
  s = s.each_char.to_a.map(&:to_i)
  range = []

  (1..6).to_a.each do |i|
    s.first(i).size * 3 <= s.size ? nil : next
    fn = s.first(i).join.to_i
    (fn + (s.size / i)).to_s.split('').size > s.first(i).size ? (ln = s.last(i + 1).join.to_i) : (ln = s.last(i).join.to_i)
    ss = (fn..ln).to_a
    next if ss.size > s.size + 3 || ss.size < s.size / 8 || ss.size == 2
    range = ss unless ss == []
  end

  range_witout = []
  range.each do |i|
    a = i.to_s.split('').size
    s.first(a).join.to_i.equal?(i) ? range_witout << s.shift(a) : nil
  end

  range_witout = range_witout.map(&:join).map(&:to_i)

  (range - range_witout).empty? || (range - range_witout).size >= 2 ? -1 : (range - range_witout).first
end


# kata solution
#
# def missing s
#   (1..(s.size/2)).each do |i|
#     (i..i+1).each do |j|
#       ss, sss, s1, s2 = s.dup, s.dup, s[0,i], s[-j..-1]
#       if ((s2.to_i-s1.to_i)*j) >= s.size && (s1..s2).one?{ |n| ss.delete_prefix!(n.to_s).nil? }
#         (s1..s2).each{ |n| return n.to_i if sss.delete_prefix!(n.to_s).nil? }
#       end
#     end
#   end
#   -1
# end
#
#
# 
# def missing s
#   (1...s.size).each {|l|
#     t = s.clone
#     n = s[0,l]
#     t.delete_prefix!(n)
#     miss = nil
#     check = true
#     while t.size >= n.size
#       n = n.succ
#       next t.delete_prefix!(n) if t.start_with?(n)
#       miss and (check = false; break)
#       miss = n
#     end
#     return miss.to_i || -1 if check && miss
#   }
#   -1
# end
#
#
#
# def missing s
#   (1..(s.size/2)).each do |i|
#     (i..i+1).one? do |j|
#       ss = s.dup
#       s1, s2 = s[0,i], s[-j..-1]
#       if ((s2.to_i-s1.to_i)*j) >= s.size && (s1..s2).one?{|n| ss.delete_prefix!(n.to_s).nil?}
#         ss = s.dup
#         (s1..s2).each do |n|
#           return n.to_i if ss.delete_prefix!(n.to_s).nil?
#         end
#       end
#     end
#   end
#   -1
# end
#
#
#
#