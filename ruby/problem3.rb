# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?
require 'prime'
n = 600851475143
start = Time.now
answer = (n**0.5).to_i.downto(3).select(&:odd?).detect do |e|
 # Prime.instance.prime? e
  (3..e**0.5).all? {|test_val| e%test_val!=0} and n%e == 0
end
puts answer
puts "took #{Time.now - start} seconds"
