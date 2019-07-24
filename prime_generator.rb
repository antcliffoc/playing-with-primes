
def prime_generator(num)
  numbers = (3..num).to_a
  primes = [2,]
  numbers.each {|x|
    is_prime = true
    primes.each {|y|
      if x%y == 0
      is_prime = false
      end}
    if is_prime == true
    primes.push(x)
    end
  }
  return primes
end

puts prime_generator(10000)
