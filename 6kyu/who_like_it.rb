def likes(names)
  return "no one likes this" if names.size == 0
  return "#{names[0]} likes this" if names.size == 1
  return "#{names[0]} and #{names[1]} like this" if names.size == 2
  return "#{names[0]}, #{names[1]} and #{names[2]} like this" if names.size == 3
  return "#{names[0]}, #{names[1]} and #{names.size - 2} others like this" if names.size > 3
end

#kata solution
# def likes(names)
#   case names.size
#   when 0 
#     "no one likes this"
#   when 1 
#     "#{names[0]} likes this"
#   when 2
#     "#{names[0]} and #{names[1]} like this"
#   when 3
#     "#{names[0]}, #{names[1]} and #{names[2]} like this"
#   else
#     "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
#   end
# end



