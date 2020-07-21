require 'prime'

def gap(g, m, n)
  while m < n
    if Prime.prime?(m)
      next_number = m + 1
      while next_number <= m + g
        if Prime.prime?(next_number) && g == next_number - m
          return [ m, next_number ]
        elsif Prime.prime?(next_number) && g != next_number-m
          break
        end
        next_number += 1
      end
      m += 1
    else
      m += 1
    end
  end

  return nil
end


# best from kata

# def gap(g, m, n)
#     require 'prime'
#     nums = Prime.each(n).select { |p| p >= m }
#     nums.each_cons(2) { |e| return e if e[1] - e[0] == g }
# end



# require 'prime'
#
# def gap(gap, low, high)
#   Prime.each(high).select{|prime| prime >= low}.each_cons(2).find{|(a,b)| b-a == gap }
# end



# require 'prime'
#
# def gap(g,m,n)
#   Prime.take_while { |i| i<=n }.reject { |i| i<m }.each_cons(2).find { |a,b| b-a == g }
# end



# def gap(g, m, n)
#     require 'prime'
    
#     for i in (m..n-g).to_a
#       return [i, i+g] if i.prime? and (i+g).prime? and (i+1...i+g).to_a.none?{|e| e.prime?}
#     end
    
#     return nil
# end



# require 'prime'

# def gap(gap, low, high)
#   primes_between(low,high).each_cons(2).find { |(a,b)| b-a == gap }
# end

# def primes_between(low,high)
#   Prime.each(high).select { |prime| prime >= low }
# end




# require 'prime'
#
# def gap(g, m, n)
#   last_prime = nil
#   (m..n).each do |number|
#     if Prime.prime?(number)
#       return [last_prime, number] if last_prime && number - last_prime == g
#       last_prime = number
#     end
#   end
#   nil
# end
