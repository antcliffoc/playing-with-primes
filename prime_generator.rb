#!/usr/bin/env ruby
def prime_generator(num)
  numbers = (3..num).to_a
  primes = [2,]
  numbers.each {|x|
    is_prime = true
    primes.each {|y|
      if x%y == 0
      is_prime = false
      break
      end}
    primes.push(x) if is_prime == true
  }
  primes.unshift(1)
  return primes
end
puts "type a number to calculate the prime numbers in the range from 1 : x"
number = gets.chomp.to_i
puts "There are #{prime_generator(number).length} Prime numbers between 1 & #{number}"
puts "The largest prime in this range is #{prime_generator(number)[-1]}"
puts "show all the primes in this range? Y/N ?"
user_response = gets.chomp
user_response.upcase!
puts prime_generator(number) if user_response == "Y"
