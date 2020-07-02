def getCount(inputStr)
  inputStr.scan(/[aeiou]/).size
end

#kata solution
# def getCount(inputStr)
#   inputStr.count("aeiou")
# end

# def getCount(inputStr)
#  inputStr.downcase.count('aeiou')
# end

# def getCount(inputStr)
#   vogals = ["a", "e", "i", "o", "u"]
#   count = 0
#   inputStr.chars.each do |letter|
#     if vogals.include? letter
#       count += 1
#     end
#   end
#   count
# end

# def getCount(inputStr)
#   inputStr.count 'aeiouAEIOU'
# end

# def getCount(inputStr)
#   array = []
#   word = inputStr.downcase.split("")

#   word.each do |i|
#     if i == 'a'
#       array << i
#     elsif i == 'o'
#       array << i
#     elsif i =='i'
#       array << i
#     elsif i == 'u'
#       array << i
#     elsif i == 'e'
#       array << i
#     end
#   end

#   p array.length

# end
