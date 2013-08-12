# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.
# Largest palindrome = 997_799, since 999 * 999 = 998_001

def palindrome(a, b)
  n = a * b
  z = n.to_s
  if z == z.reverse
    puts "palindrome #{n} from #{a} times #{b}"
  else
    if a > 900
      a -= 1
      palindrome(a,b)
    else
      a = 999
      b -= 1
      palindrome(a,b)
    end
  end 
end

palindrome(999, 999)


