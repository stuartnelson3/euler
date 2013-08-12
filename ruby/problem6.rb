square_of_sums = (1..100).inject(&:+)**2
sum_of_squares = (1..100).map(&->(x){x**2}).inject(&:+)

puts square_of_sums - sum_of_squares
