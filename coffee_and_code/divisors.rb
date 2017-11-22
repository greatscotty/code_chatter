# ==============================================================================
# Instructions
# ==============================================================================
=begin
Write a method that takes an integer argument, and returns an array of all divisors
of that integer. 
=end 


# ==============================================================================
# Your Method
# ==============================================================================
# Do your work here


# Version 1:
def divisors (integer)  
    new_array = []
    range = (1..integer).to_a

        range.each do |x|

            if integer % x == 0
                new_array << x
            end
        end
        return new_array
end


# ==============================================================================
# Examples / Test cases
# ==============================================================================
p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891] # this will run slow