def is_sum_of_squares?(n)
  root = Math.sqrt(n).floor
 
  a = 1
  b = root
 
  until a > b
    sum = a**2 + b**2
    if sum == n
      return true
    elsif sum > n
      b -= 1
    else
      a += 1
    end
  end
 
  false
end