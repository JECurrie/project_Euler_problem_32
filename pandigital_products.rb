#n-digit number is pandigital if it makes use of all the digits 1 to n exactly once.
=begin
Pandigital products Problem 32
We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; 
for example, the 5-digit number, 15234, is 1 through 5 pandigital.
The product 7254 is unusual, as the identity, 39 × 186 = 7254, 
containing multiplicand, multiplier, and product is 1 through 9 pandigital.
Find the sum of all products whose multiplicand/multiplier/product identity 
can be written as a 1 through 9 pandigital.
HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.	
=end
puts (1..4999).flat_map { |a|
  (1..99).map do |b|  
    [a.to_s + b.to_s + (a*b).to_s, a*b]
  end
}.select { |p| 
  p[0].length == 9 && p[0].each_char.sort.join == "123456789"
}.map { |p| p[1] }.uniq.reduce(:+)