n = 2**1000
puts n.to_s.split(//).map(&:to_i).inject(&:+)
