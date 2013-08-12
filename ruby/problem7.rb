require 'prime'

puts (1..Float::INFINITY).lazy.select {|n| Prime.instance.prime? n }.first(10_001).max
