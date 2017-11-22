#Project: Coffee and Code Kata - Missingno
# Author: Scott J.
# Date: Tuesday 11/21/2017 14:47

# ==============================================================================
# Instructions
# ==============================================================================
=begin
In this exercise you will be making a method that takes a sorted array as an argument
and returns an array with all the numbers that are missing from the sequence.
=end 


# ==============================================================================
# Your Method
# ==============================================================================
# Do your work here

# Attempt 1:
# def missingno (array)
#     new_array = []
#     start_interger = array[0]

#     for x in array[0]..array[-1]
#         new_array << start_interger
#         start_interger +=1
#     end
#     return new_array - array
# end

# Attempt 2:
def missingno(array)
 (array[0]..array[-1]).to_a - array
end


# ==============================================================================
# Examples / Test cases
# ==============================================================================
p missingno([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missingno([1, 2, 3, 4]) == []
p missingno([1, 5]) == [2, 3, 4]
p missingno([6]) == []