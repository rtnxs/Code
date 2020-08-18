def runoff(voters)
  voters_rank = {}
  while true
    voters.each do |row|
      v = row[0]
      voters_rank[v] ||= 0
      voters_rank[v] += 1
    end

    winners = voters_rank.select { |k, v| v == voters_rank.values.max }
    return winners.keys[0] if winners.values[0] > voters_rank.values.reduce(:+) / 2

    loosers = voters_rank.select { |k, v| v == voters_rank.values.min }
    loosers.keys.each { |k| voters_rank.delete(k) }
    voters.each { |row| loosers.keys.each { |x| row.delete(x) } }
  end
end

# kata solution
#
# def runoff(voters)
#   loop{
#     rnd = {}
#     voters[0].each{|pty| rnd[pty] = voters.map{|v| v[0]}.count(pty)}
#     return nil if rnd.empty?
#     return rnd.key(rnd.values.max) if rnd.values.max > 0.5 * voters.length
#     voters.map!{|v| v.delete_if{|pty| rnd[pty] == rnd.values.min}; v}
#   }
# end
#
#
#
#
#def runoff(voters)
#   while select_winner_for(voters).nil?
#     losers = select_losers_for(voters) + select_no_votes_for(voters)
#     losers.each{|loser| voters.map{|voter| voter.delete(loser)}}
#     return nil if voters.flatten.empty?
#   end
#   select_winner_for(voters)
# end
#
# def select_winner_for(voters)
#   voters.group_by{|el| el.first}.select{|k, v| v.count > voters.count/2}.keys.first
# end
#
# def select_losers_for(voters)
#   voters.group_by{|el| el.first}.select{|k, v| v.count == voters.group_by{|el| el.first}.map{|k, v| v.count}.min}.keys
# end
#
# def select_no_votes_for(voters)
#  voters.flatten.uniq - voters.group_by{|el| el.first}.map{|k, v| k}
# end
#
#
#
# def runoff(voters, votes=nil)
#   if votes.nil?
#     votes = {}
#     voters.flatten.each do |v|
#       votes[v] = 0
#     end
#   end
#
#   voters.each { |a| votes[a.first] += 1 }
#   sorted = votes.sort_by { |_,v| -v }
#
#   if sorted.count { |a| a.last == sorted.first.last } == 1 && sorted.first.last > voters.size / 2
#     return sorted.first.first
#   else
#     loosers = votes.select { |_,v| v == sorted.last.last }.keys
#     voters.each do |a|
#       loosers.each do |looser|
#         votes.delete(looser)
#         a.delete(looser)
#       end
#     end
#   end
#
#   return if voters.all?(&:empty?)
#   return runoff(voters, votes)
# end
#
#
#
#
# def runoff(voters)
#   candidates = voters.flatten.uniq
#   first_choice = (voters.map(&:first) + candidates).each_with_object(Hash.new(-1)) {|s, a| a[s] += 1}
#   _, least_votes, possible_winner, most_votes = first_choice.minmax_by { |k, v| v }.flatten
#   loserlist = first_choice.select { |k, v| v == least_votes }.keys
#   reduced_ballots = voters.map { |a| a.delete_if { |t| loserlist.include? t } }
#   most_votes > voters.length / 2 ? possible_winner : runoff(reduced_ballots)
# end
#
#
#
#
