# Teamtreehouse exercise for Ruby Loops
=begin
Using the loop construct, add the current value of number to the numbers array. 
Inside of the loop, add 1 to the number variable. 
If the numbers array has more than 3 items, 
use the break keyword to exit the loop.
=end

numbers = []

number = 0
loop { 
  numbers[number]
  number += 1
  lengs = numbers.length
  break if lengs == 3
}
# write your loop here
