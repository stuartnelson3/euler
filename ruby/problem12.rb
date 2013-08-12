number = 0
i = 1

def number_of_divisors(number)
  divisors = 0
  sqrt = number**0.5
  (1..sqrt).each do |n|
    if number % n == 0
      divisors += 2
    end
  end
  divisors -=2 if sqrt*sqrt == number
  divisors
end

while number_of_divisors(number) < 500
  number += i
  i += 1
end

puts number
