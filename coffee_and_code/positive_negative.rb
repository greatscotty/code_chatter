# ==============================================================================
# Instructions
# ==============================================================================
=begin
Given an array of integers, return an array, where the first element is the count of positive
numbers and the second element is sum of negative numbers.
If the input array is empty, return an empty array.
=end 


# ==============================================================================
# Your Solution
# ==============================================================================
# Do your work here
# input = array  
# output = array

# rules:
# - if the array is empty return an empty array
# - first 2 elements are the positive sum second is the sum of - intergers

# algorythm: 
# - create an array to store or new array
# - if the element is positive add to the first element
# - if the element is negative add to the second element
# - shovel into an array


def positive_negative (array)
    postivie_negative_elements = []
    array.each do |element|
        if element > 0
            postivie_negative_elements[0] =+ element 
        elsif element < 0
            postivie_negative_elements[1] =+ element 
        end
    end
end

# ==============================================================================
# Examples / Test cases
# ==============================================================================
puts positive_negative([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15])==[10, -65]
puts positive_negative([0, 2, 3, 0, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14])== [8, -50]
puts positive_negative([]) == []

