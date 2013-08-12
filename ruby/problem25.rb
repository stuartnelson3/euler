eu = [1, 1]
term = 2

while true
  eu[1], eu[0] = eu[0] + eu[1], eu[1]
  term += 1
  break if eu[1].to_s.length == 1000
end

puts term
