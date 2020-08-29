def sum_of_intervals(intervals)
  intervals.map{|a| (a.first...a.last).to_a }.flatten.uniq.size
end

# kata solution
#
# def sum_of_intervals(intervals)
#   intervals.flat_map { |x, y| [*x...y] }.uniq.size
# end
#
#
#
# def sum_of_intervals(intervals)
#   intervals.map { |start, stop| (start...stop).to_set } .reduce(&:merge) .size
# end
#
#
#
# def sum_of_intervals(intervals)
#   intervals.map { |f, l| Array(f...l) }.flatten.uniq.length
# end
