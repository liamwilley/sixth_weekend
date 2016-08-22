# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.
require 'RSpec'

class Prime_Number

  def is_prime?(number)
    counter = 1
    (number - 2).times do 
      if number % (number - counter) == 0
       return false
       break
     end
     counter += 1
   end
    return true
  end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

  def highest_prime_number_under(number)

    prime = number - 1
    counter = 1
    until is_prime?(prime)
      prime -= 1
    end
    return prime
  end
end

# p = Prime_Number.new
# puts p.is_prime?(11)

# p = Prime_Number.new
# puts p.highest_prime_number_under(12)

RSpec.describe Prime_Number do
  describe '#is_prime?' do
    it 'should return true if a number is prime' do
      prime = Prime_Number.new
      expect(prime.is_prime?(11)).to eq(true)
    end
  end

  describe '#highest_prime_number_under' do
    it 'should return the highest prime number that is less than the given number' do
      prime = Prime_Number.new
      expect(prime.highest_prime_number_under(50)).to eq(47)
    end
  end
end