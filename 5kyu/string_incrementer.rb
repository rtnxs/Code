def increment_string(input)
  s = input.gsub(/\d+\z/, '')
  n = input.scan(/\d+\z/).empty? ? ['0'] : input.scan(/\d+\z/)
  s + (n.first.to_i + 1).to_s.rjust(n.first.size, '0')
end



#kata solution
# def increment_string(input)
#   input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
# end
#
#
#
# def increment_string(input)
#   input[/\d\z/] ? input.sub(/(\d+)\z/) { $1.next } : input + '1'
# end
#
#
#
# def increment_string(input)
#   input.gsub(/\d+/) { |match| match.succ } if Integer(input.chars.last) rescue input << "1"
# end
#
#
# def increment_string(s)
#   s =~ /\d$/ ? s.gsub(/(\d+)$/) {$1.next} : "#{s}1"
# end
