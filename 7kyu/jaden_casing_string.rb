class String
  def jaden_case
    split.each{|i| i.capitalize!}.join(' ')
    # split.each(&:capitalize!).join(' ')     # другой вариант передать блок
  end
end

## добавить библиотеку рельс и использовать метод рельс
# require 'active_support/all'
# class String
#   def jaden_case
#     titleize
#   end
# end

# class String
#   def jaden_case
#     gsub(/(\w|')+/, &:capitalize)
#   end
# end


# a=String.new
# a = "How can mirrors be real if our eyes aren't real"
# p a.jaden_case


# split Делит строку str на подстроки по разделителю pattern
# (который может быть как правилом, так и строкой).  str.split(pattern=$;, [limit])

# each Выполняет код в block для каждого элемента массива array, передавая в
# блок текущий элемент в качестве параметра.   array.each {|item| block }  #=> array

# capitalize Возвращает копию строки str в которой первый символ преобразуется в верхний регистр, а остальные — в нижний.

# join Возвращает строку, созданную путем преобразования каждого элемента
# массива в строку, разделенных строкой     ["a", "b", "c" ].join("-")  #=> "a-b-c"
