# Examples
# is_square (-1) # => false
# is_square   0 # => true
# is_square   3 # => false
# is_square   4 # => true
# is_square  25 # => true
# is_square  26 # => false

# z извлекаем корень.округляем.возводим в квадрат сравниваем, совпало с исходным true
def is_square(x)
  x >= 0 && Math.sqrt(x).to_i ** 2 == x     ## методы ceil, floor, round, to_i, to_int и truncate имеют схожую функциональность
end

## корень от числа деление на 1 и сравнивать остаток от деления с 0
# def is_square(x)
#   x < 0 ? false : Math.sqrt(x) % 1 == 0
# end


# def is_square(x)
# x < 0 ? false :  Math.sqrt(x).to_s[-1] == "0"
# end
