def find_outlier(integers)
  od = []
  eve = integers
  eve.each {|e| od.push(e) if e%2 != 0}
  eve -= od
  eve.count < od.count ? eve[0] : od[0]
end

#kata solution
# метод partition вернул два массива по блоку нечетных чисел и чётныхю сравнение длины массива с 1
# def find_outlier(integers)
#   odd, even = integers.partition(&:odd?)
#   odd.length > 1 ? even[0] : odd[0]
# end
#
# def find_outlier(integers)
#   integers.partition(&:odd?).find(&:one?).first
# end
#
# def find_outlier(integers)
#   outlier = integers.first(3).count(&:even?) < 2 ? :even? : :odd?
#   integers.find(&outlier)
# end
#
# def find_outlier(integers)
#   integers.count(&:even?) > 1 ? integers.find(&:odd?) : integers.find(&:even?)
# end
