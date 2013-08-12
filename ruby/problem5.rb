searching = true
prospect = 2520
start_time = Time.now
while searching
  if (11..20).all? {|e| prospect % e == 0 }
    answer = prospect
    searching = false
  end
  puts prospect
  prospect += 10
end
puts "Took #{(Time.now - start_time)} seconds"
puts answer
