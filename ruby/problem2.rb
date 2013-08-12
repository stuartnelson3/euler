i = 0
b = 1
total = 2
a = [1,2]
while a.last < 4000000
  c = a[i] + a[b]
  a.push c
  c.even? ? total += c : total
  i += 1
  b += 1
end
puts total
