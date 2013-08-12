# count letters to spell out one to one thousand inclusive

def number_to_english(n)
  s = n.to_s
  split_s = s.split(//)
  result = ""
  while split_s.length == 3
    result << hundreds_parser(split_s.shift)
  end
  while split_s.length == 2
    if split_s.first == "1" and split_s.last != "0"
     result << teens_parser(split_s.join)
     split_s.clear
    else
      result << tens_parser(split_s.shift)
    end
  end
  while split_s.length == 1
    result << ones_parser(split_s.shift)
  end
  result
end

def ones_parser(letter)
  case letter
  when "9"
    "nine"
  when "8"
    "eight"
  when "7"
    "seven"
  when "6"
    "six"
  when "5"
    "five"
  when "4"
    "four"
  when "3"
    "three"
  when "2"
    "two"
  when "1"
    "one"
  when "0"
    ""
  end
end

def teens_parser(teen)
  case teen
  when "19"
    "nineteen"
  when "18"
    "eighteen"
  when "17"
    "seventeen"
  when "16"
    "sixteen"
  when "15"
    "fifteen"
  when "14"
    "fourteen"
  when "13"
    "thirteen"
  when "12"
    "twelve"
  when "11"
    "eleven"
  end
end
def tens_parser(letter)
  case letter
  when "9"
    "ninety"
  when "8"
    "eighty"
  when "7"
    "seventy"
  when "6"
    "sixty"
  when "5"
    "fifty"
  when "4"
    "fourty"
  when "3"
    "thirty"
  when "2"
    "twenty"
  when "1"
    "ten"
  when "0"
    ""
  end
end

below_hundred = (1..99).map {|e| number_to_english e }.join.length
hundreds = (1..99).map {|e| number_to_english e }.map {|e| e + "andhundred" }
ones = hundreds.map {|e| e + "one" }.join.length
twos = hundreds.map {|e| e + "two" }.join.length
threes = hundreds.map {|e| e + "three" }.join.length
fours = hundreds.map {|e| e + "four" }.join.length
fives = hundreds.map {|e| e + "five" }.join.length
sixes = hundreds.map {|e| e + "six" }.join.length
sevens = hundreds.map {|e| e + "seven" }.join.length
eights = hundreds.map {|e| e + "eight" }.join.length
nines = hundreds.map {|e| e + "nine" }.join.length
total = "onethousand".length + below_hundred+ones+twos+threes+fours+fives+sixes+sevens+eights+nines
puts total
