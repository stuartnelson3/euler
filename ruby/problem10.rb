require 'prime'
rd, wr = IO.pipe

pid = fork do
  rd.close
  a = (1..1_000_000).lazy.select(&:odd?).select {|n| Prime.instance.prime? n }.inject(&:+)
  wr.write a.to_s
  wr.close
end
wr.close
a = (1_000_001..2_000_000).lazy.select(&:odd?).select {|n| Prime.instance.prime? n }.inject(&:+)
b = rd.read.to_i
rd.close

puts a + b + 2 # 2 is prime but filtered out
Process.wait(pid)
