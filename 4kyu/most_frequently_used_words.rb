def top_3_words(text)
  return [] unless text =~ /[a-zA-Z]/
  str = text.downcase.gsub(/[.,:\/]/, '')
  hash = {}
  str.split(' ').each do |elem|
    if hash.keys.include?(elem)
      hash[elem] += 1
    else
      hash[elem] = 1
    end
  end
  hash.sort_by {|_, v| v}.reverse.map! {|i| i.first}.first(3)
end

# kata solution
#
# def top_3_words(t)
#   t.downcase.scan(/\w+[\w']*/).inject(Hash.new(0)){|h,w|h[w]+=1;h}.sort_by{|k,v|-v}.take(3).map(&:first)
# end
#
#
#
# def top_3_words(text)
#   text.scan(/[A-Za-z']+/)
#       .select { |x| /[A-Za-z]+/ =~ x }
#       .group_by { |x| x.downcase }
#       .sort_by { |k,v| -v.count }
#       .first(3)
#       .map(&:first)
# end
#
#
#
# def top_3_words(t)
#   for_words = /\w+[\w']*/
#   increment_word_count = lambda {|word,hash| hash[word] += 1}
#   inverse_of_values = lambda {|k,v| -v}
#
#   t.downcase.scan(for_words)
#   .each_with_object(Hash.new(0),&increment_word_count)
#   .sort_by(&inverse_of_values)
#   .take(3).map(&:first)
# end
#
#
#
# def top_3_words(text)
#   text.scan(/\w[\w']*/i)
#     .each_with_object(Hash.new(0)) {|word, freq| freq[word.downcase] += 1}
#     .sort {|a, b| b.last <=> a.last}
#     .take(3)
#     .map(&:first)
# end
#
#
# def top_3_words(s)
#   s.downcase.scan(/\b[a-z']+\b/).group_by(&:itself).transform_values(&:size).sort_by {|k,v,| -v}.take(3).map(&:first)
# end
#
#
#
# def top_3_words(text)
#   word_counts(words_in_str text).sort_by(&:last).reverse.map(&:first)[0...3]
# end
#
# def word_counts(arr)
#   arr.inject(Hash.new(0)) { |hash, word| hash[word] += 1; hash }
# end
#
# def words_in_str(text)
#   text.downcase.scan(/(\w+(?:\-|\')?(?:\w+)?)/).flatten
# end
#
#
#
# def top_3_words text
#   arr = text.downcase.scan(/\w(?:'|\w)*/)
#   arr.uniq.max_by(3){|w| arr.count w }
# end
#
#
#
# def top_3_words(text)
#   counts = Hash.new(0)
#   text.downcase.scan(/[a-z]+[a-z']*/) { |word| counts[word] += 1 }
#   counts.max_by(3) { |word, count| count}.map(&:first)
# end
