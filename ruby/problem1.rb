i = 0
n = 1000
total = 0
until i == n
  if i % 15 == 0
    total += i
  elsif i % 5 == 0
    total += i
  elsif i % 3 == 0
    total += i
  end 
  i += 1
end
puts total

