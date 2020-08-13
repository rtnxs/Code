def mix(s1, s2)
  (s1 + s2).scan(/[a-z]/).uniq.map { |char|
    [char, [s1.count(char), s2.count(char)]]
  }.select { |_, counts|
    counts.max > 1
  }.map { |char, (s1_count, s2_count)|
    case s1_count <=> s2_count
    when  1 then "1:#{char * s1_count}"
    when  0 then "=:#{char * s1_count}"
    when -1 then "2:#{char * s2_count}"
    end
  }.sort_by { |string|
    [-string.length, string]
  }.join("/")
end

# kata solution
#
# def mix(s1, s2)
#   hist=('a'..'z').map{|c| [c, s1.count(c), s2.count(c)]}.select{|v| v[1]>1||v[2]>1}
#   hist2=hist.map{|v| [v[1]>v[2]?-v[1]:-v[2], v[1]>v[2]?'1':v[1]<v[2]?'2':'=', v[0]]}
#   hist2.sort.map{|v| v[1]+':'+v[2]*-v[0]}.join('/')
# end
#
#
#
# def mix a, b
#   ("a".."z").to_a.select{ |letter| a.count(letter) > 1 || b.count(letter) > 1 }.map{ |letter|
#     if a.count(letter) > b.count(letter)
#       "1:#{letter * a.count(letter)}"
#     elsif b.count(letter) > a.count(letter)
#       "2:#{letter * b.count(letter)}"
#     else
#       "=:#{letter * a.count(letter)}"
#     end
#   }.sort_by{|h| [-h.size, h[0], h[-1]] }.join("/")
# end
#
#
#
# class CounterLow < Hash
#     def initialize(s)
#         super(0)
#         s.scan(/[a-z]/).each{|c| self[c] += 1}
#     end
# end
#
# def mix(*args)
#     c1,c2 = args.map{|s| CounterLow.new(s)}
#     return (c1.keys | c2.keys).map{ |k| a,b = c1[k], c2[k]
#                                         n,who = [a,b].max, '=12'[a<=>b]
#                                         n > 1 ? "#{who}:#{k*n}" : '' }
#                               .reject!(&:empty?)
#                               .sort_by!{ |s| [-s.size,s] }
#                               .join("/")
# end
#
#
#
# def mix(s1, s2)
#   h = Array.new(2) {Hash.new(0)}
#   [s1,s2].each.with_index { |s,i| s.each_char { |x| h[i][x] += 1 if x >= 'a' && x <= 'z' } }
#   ('a'..'z').each_with_object([]) { |x, r|
#     m = [h[0][x], h[1][x]].max
#     r << [-m, [2,3,1][(h[0][x] <=> h[1][x])+1], x] if m > 1
#   }.sort.map {|x| "#{x[1] == 3 ? '=' : x[1]}:#{x[2]*(-x[0])}"}.join("/")
# end
#
#
#
# def mix *x
#   (?a..?z).map{|c|
#     m=(a,b=x.map{|s|s.count c}).max
#     [?=,?1,?2][a<=>b]+?:+c*m if m>1
#   }.compact.sort_by{|g|[-g.size,g]}*?/
# end
# 