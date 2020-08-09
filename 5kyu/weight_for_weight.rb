def order_weight(strng)
  strng = strng.split(" ").map{|e| [e, e.split("").map(&:to_i).sum]}
  strng.sort_by { |elem| [elem.last, elem.first] }.map(&:first).join(' ')
end


# kata solution
# def order_weight(s)
#   s.split.sort_by { |n| [n.to_i.digits.sum, n] }.join' '
# end
#
#
#
# def order_weight(string)
#   string.split.sort_by { |n| [n.chars.map(&:to_i).reduce(:+), n] }.join(" ")
# end
#
#
#
# def order_weight(strng)
#     (strng.split.sort.sort_by {|x| x.to_i.digits.sum}).join(" ")
# end
#
#
#
# def weight(str)
#   str.to_s.chars.map(&:to_i).reduce(:+)
# end
# def order_weight(str)
#   str.split.sort { |a,b| [weight(a),a] <=> [weight(b),b] }.join(" ")
# end
#
#
#
#def compare a, b
#   c = a.chars.reduce(0){ |s, x| s + x.to_i } <=> b.chars.reduce(0){ |s, x| s + x.to_i }
#   if c == 0
#     c = a <=> b
#   end
#   c
# end
# def order_weight(strng)
#   weights = strng.split
#   weights.sort{ |a, b| compare a, b }.join " "
# end
