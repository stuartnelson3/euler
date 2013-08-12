def operate_on_number(n, array)
  array.delete(n)
  if n % 2 == 0
    n / 2
  else
    (3 * n) + 1
  end
end

rd, wr = IO.pipe

pid = fork do
  rd.close
  a = (1..500000).to_a.select(&:odd?)

  cchain_count = 0
  ssaved_count = 0
  aanswer = 0
  a.each do |n|
    ssaved = n
    cchain_count = 0
    while true
      break if n == 1
      n = operate_on_number(n, a)
      cchain_count += 1
    end
    if cchain_count > ssaved_count
      ssaved_count = cchain_count
      aanswer = ssaved
      puts "Child; New leader: #{aanswer}, #{ssaved_count} iterations"
    end
  end
  wr.write "#{answer} with #{ssaved_count} iterations"
  wr.close
end
wr.close
a = (500001..1000000).to_a.select(&:odd?)

chain_count = 0
saved_count = 0
answer = 0
a.each do |n|
  saved = n
  chain_count = 0
  while true
    break if n == 1
    n = operate_on_number(n, a)
    chain_count += 1
  end
  if chain_count > saved_count
    saved_count = chain_count
    answer = saved
    puts "Parent; New leader: #{answer}, #{saved_count} iterations"
  end
end

puts "#{answer} with #{saved_count} iterations"
puts "Child found: #{rd.read}"
rd.close

Process.wait(pid)
