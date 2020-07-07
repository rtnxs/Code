def find_nb(m)
  n = 0
  while m.positive?
    n += 1
    m -= n**3
  end
  m.zero? ? n : -1
end

#kata solution

# def find_nb(m)
#   n = ((m * 4)**0.25).to_i
#   (n**2) * ((n + 1)**2) / 4 == m ? n : -1
# end



# def find_nb(m)
#    counter = 0
#    while m > 0
#      counter += 1
#      m -= counter**3
#    end
#    m == 0 ? counter : -1
# end



# def find_nb(m)
#   check = Math.sqrt(2* Math.sqrt(m)).floor
#   (check * (check + 1)/2)**2 == m ? check : -1
# end



# def find_nb(m)
#   r = Integer ((m ** 0.5 * 2)**0.5)
#   (r * (r + 1) / 2)**2 == m ? r : -1
# end
