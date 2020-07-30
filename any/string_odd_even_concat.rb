# Нужно в строках определять четные элементы с нечетными и конкатенировать друг с другом. То есть например при
# введении alphabet, получить - lhbtapae.

def method(text)
  ev, od = [], []
  text.chars.each_with_index do |e, i|
    i.even? ? ev.push(e) : od.push(e)
  end
  (od + ev).join
end
