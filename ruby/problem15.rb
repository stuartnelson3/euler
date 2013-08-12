# 20x20 lattice, can only move down or to right
# so at each point you have two ways to go
# 40 total steps (20 + 20)
# you have to go down 20
# 40 choose 20

def combinatoric(n, m)
  # n choose m
  n_factorial = (1..n).inject(&:*)
  m_factorial = (1..m).inject(&:*)
  nm_diff_factorial = (1..(n-m)).inject(&:*)
  n_factorial / (m_factorial * nm_diff_factorial)
end

puts combinatoric(20 * 2, 20)
