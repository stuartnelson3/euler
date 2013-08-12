pyth_array = (1..500).lazy.map do |x|
  (1..x).map do |y|
    (1..y).select do |z|
      z**2 + y**2 == x**2 and z+y+x == 1000
    end.map {|z| [z,y,x]}
  end
end

answer = pyth_array.force.flatten.inject(&:*)
puts answer
