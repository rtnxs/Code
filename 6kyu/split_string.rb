def solution(str)
  str.concat('_').scan /../
end

#kata solution

# def solution str
#   (str + '_').scan /../
# end

# def solution(str)
#     str << "_" if str.length % 2 != 0
#     str.chars.each_slice(2).map(&:join)
# end

# def solution(str)
#   (str << "_").scan(/\w{2}/)
# end

# def solution(str)
#   str.chars.each_slice(2).map { |d| d.length == 2 ? d.join : d.join+'_' }
# end

# def solution(str)
#   str << '_' if str.size.odd?
#   str.split(/(.{2})/).reject(&:empty?)
# end