def encrypt(text, n)
    return text if n <= 0
    arr1 = text.chars.select.with_index{|_,idx| idx.odd?}
    arr2 = text.chars.select.with_index{|_,idx| idx.even?}
    encrypt( (arr1 + arr2).join , n-1)
end

def decrypt(encrypted_text, n)
    return encrypted_text if n <= 0
    midpoint = encrypted_text.length/2
    arr1 = encrypted_text[0...midpoint].chars
    arr2 = encrypted_text[midpoint ..-1].chars
    decrypt( arr2.zip(arr1).join , n-1)
end

# kata solution

def encrypt(text, n)
  return text if n <= 0
  encrypt(text.scan(/(.)(.)?/).transpose.reverse.join, n-1)
end

def decrypt(text, n)
  return text if n <= 0
  c, s = text.chars, text.size/2
  decrypt(c.drop(s).zip(c.take s).join, n-1)
end



def encrypt(text, n)
  size = (text.size/2) - 1
  # science bitches
  n.times do 
    ittr = []
    size.downto(0).each{|i| ittr << (i == 0 ? [size] : (0..i).to_a.map{|x|x*2+(size-i)})}
    ittr.each do |i|
      i.each do |x|
        text[x+1], text[x] = text[x], text[x+1]
      end  
    end
  end
  text
end

def decrypt(en_text, n)
  size = (en_text.size/2) - 1
  n.times do 
    ittr = []
    size.downto(0).each{|i| ittr << (i == 0 ? [size] : (0..i).to_a.map{|x|x*2+(size-i)})}
    ittr.reverse!.each do |i|
      i.each do |x|
        en_text[x+1], en_text[x] = en_text[x], en_text[x+1]
      end  
    end
  end
  en_text
end



def encrypt(text='', n=0)
  return text if n < 1
  encrypt(text.chars.each_with_index.reduce(['', '']) { |a, (c, i)| i.odd? ? a[0] << c : a[1] << c; a }.join, n-1)
end

def decrypt(text='', n=0)
  return text if n < 1
  mid = text.size / 2
  decrypt(text[mid..-1].chars.zip(text[0...mid].chars).join, n-1)
end



def encrypt(text, n)
  n < 1 ? text : (n -= 1; encrypt text.chars.each.with_index.partition{|a,i| i.odd?}.map{|m| m.map(&:first).join}.join, n )
end

def decrypt(encrypted_text, n)
  n < 1 ? encrypted_text : (n -= 1; decrypt encrypted_text[encrypted_text.size/2..-1].chars.zip(encrypted_text[0,encrypted_text.size/2].chars).join,n)
end