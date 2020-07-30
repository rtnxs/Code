# # Написать метод / функцию, которая принимет на вход текст (учитывать пунктуацию и специальные символы),
# # и возвращает массив из 3 х наиболее часто встречаемых слов в тексте в порядке убывания.
# # словом является строка букв (A to Z), опционально содержащая один или более апострофов (')
# # совпадения не должны быть чувствительны к регистру и слова в возвращаемом массиве необходимо привести к нижнему регистру
# # Если текст содержит меньше трёх уникальных слов, вернуть пустой массив.


def frequent_words(text)
  scan_text = text.scan(/[[:alpha:]']+/)
  hash_freq = scan_text.tally
  select_hash = hash_freq.select { |_, v| v > 2 }
  sort_hash = select_hash.sort_by { |_, v| -v }.to_h
  arr = sort_hash.keys.first(3)
  arr.size < 3 ? [] : arr
end

# tally new method Enumerable#tally!
# Why Use It?
# If you’ve been using Ruby, chances are you’ve used code something like one of these lines to do
# the same thing tally is doing above:
# # p h.group_by { |v| v }.transform_values(&:size)
# # p h.group_by { |v| v }.map { |k, vs| [k, vs.size] }.to_h
# # p h.group_by { |v| v }.to_h { |k, vs| [k, vs.size] }
# # p h.each_with_object(Hash.new(0)) { |v, h| h[v] += 1 }
# # p h
