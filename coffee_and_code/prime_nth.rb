# ==============================================================================
# Instructions
# ==============================================================================
=begin
We will be making a program that can tell you what the nth prime number is, in a series of prime numbers.

For example, the first five primes are: 2 3 5 7 11 - the 3rd prime is 5. The 5th prime is 11.

For this exercise, you will not be able to use the Prime class in ruby or integer methods that check for
whether a given number is prime. 

If you are unfamiliar with or need a refresher on prime numbers: https://en.wikipedia.org/wiki/Prime_(disambiguation)

All answers that pass tests are valid, so it is ok to extract parts of your logic to other methods if you wish.
=end 


# ==============================================================================
# Your Method
# ==============================================================================
# Do your work here

def prime_nth (x)
    d = 0
    for d in 2..(x-1)
        if (d % num) == 0
            return false
        end
    end
end

def test (x)
    p x
end

# ==============================================================================
# Examples / Test cases
# ==============================================================================
test(1)

# prime_nth(1) == 2
# prime_nth(2) == 3
# prime_nth(5) == 11
# prime_nth(6) == 13 
#prime_nth(10_001) == 104_743 #challenge mode :o