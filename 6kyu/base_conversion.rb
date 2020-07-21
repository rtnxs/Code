def convert(input, source, target)
  n = input.chars.inject(0) { |s, c| s * source.size + source.index(c) }
  s = ''
  begin
    n, i = n.divmod(target.size)
    s = target[i] + s
  end while n > 0
  s
end


#kata solution

# def convert(input, source, target)
#   value = input.chars.reduce(0) do |s, c|
#     source.size * s + source.index(c)
#   end
#   res = ''
#   while value >= 0
#     res = target[value % target.size] + res
#     value = value < target.size ? -1 : value/target.size
#   end
#   res
# end



# def convert(input, source, target)
#   return input if source == target

#   source_base = source.size
#   target_base = target.size
#   characters = input.reverse.each_char.with_index

#   decimal = characters.reduce(0) do |sum, (character, index)|
#     sum + (source_base ** index) * source.index(character)
#   end

#   result = ""
#   loop do
#     decimal, index = decimal.divmod(target_base)
#     result << target[index]

#     break if decimal.zero?
#   end

#   result.reverse
# end



# def convert(input, source, target)
#   value = input.chars.inject(0) do |ans, c|
#     source.index(c) + ans * source.size
#   end
#   n = value
#   ans = ""
#   begin
#     ans += target[n % target.size]
#     n /= target.size
#   end while (n > 0)
#   ans.reverse
# end



# def convert(input, source, target)
#     v=input.chars.reduce(0){|s,x|
#     s*source.size+source.index(x)
#     }
#     return target[0]if v==0
#     o=''
#     (o[0,0]=target[v%target.size]
#     v/=target.size)while v>0
#     o
# end



# def convert(input, source, target)
#   to_base(from_base(input, source), target)
# end

# def from_base(s, base)
#   s.split('').inject(0) do |res, char|
#     res = res * base.size + base.index(char)
#   end
# end

# def to_base(n, base)
#   n < base.size ? base[n] : to_base(n / base.size, base) + base[n % base.size]
# end



# def convert(input, source, target)
#   in_as_dec = convert_input_to_dec(input, source)
#   convert_dec_to_target(in_as_dec, target)
# end

# def convert_input_to_dec(input, source)
#   acc = 0
#   input.chars.each_with_index do |char, index|
#     acc += source.index(input[index]) * (source.length ** ((input.length - 1) - index))
#   end
#   acc
# end

# def convert_dec_to_target(input, target)
#   res = ""
#   target_base = target.length
#   if input != 0
#     highest_pow = Math.log(input, target_base).to_i
#     pow = highest_pow
#     until pow < 0 do
#       place_val = input / (target_base ** pow)
#       input -= place_val * (target_base ** pow)
#       res += "#{target[place_val]}"
#       pow -= 1
#     end
#     res
#   else
#     target[0]
#   end
# end
