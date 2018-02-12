
#Project: Prime Factor Divisor
# Author: Scott J.
# Date: Wednesday 11/29/2017 15:02

# ==============================================================================
# Instructions
# ==============================================================================
=begin
We will be creating a method that takes an integer argument and returns an array
with its highest prime factor and its highest divisor (not including itself).

If the input number is prime, the method will return an empty array.

If the input number is negative, the method will use the absolute number (non negative)

For this exercise, feel free to google the math elements but please refrain from
googling and copy pasting code to accomplish said math.

There are a couple extra challenges for anyone who finishes early!
=end 


# Pseudocode

# absolute value input
# check if value is prime
# find return highest prime factor
# find highest divisor


# ==============================================================================
# Your Method
# ==============================================================================
# Do your work here

require 'pry'

def prime_factor_divisor(integer)
    integer = integer.abs
    factor_divisor = []
    divisors = []

    def is_prime?(integer)
        
    end
    
    for x in 2..(integer-1)
        if (integer % x) == 0
            divisors << x 
        end
    end
binding.pry


    

end


# ==============================================================================
# Examples / Test cases
# ==============================================================================

p prime_factor_divisor(100) == [5, 50]
# p prime_factor_divisor(1969) == [179, 179]
# p prime_factor_divisor(997) == []
# p prime_factor_divisor(-1800) == [5, 900]