# ==============================================================================
# Instructions
# ==============================================================================
=begin
In this exercise we will be making a method that takes two arguments, an Array
and an integer. The method will return an array with the first two values from the 
input array that can be added to equal the input integer.

The "first" values are determined by the position of the second digit only. If we 
pass our method ([2, 5, 5, 8], 10), the return value will be [5, 5].

If no two digits in the input array can be added to yield the number, return
nil.
=end 


# ==============================================================================
# Your Method
# ==============================================================================
# Do your work here
def find_sum (array, sum)
    index = 0
    return_array = nil

   array[(index+1)..-1].each do |x|

        array[(index)..-1].each do |y|
    
            if y + x == sum
                return_array = [x, y]
            end
           
        end 
        p index
    
        index+=1
    end 
    return return_array
end

# ==============================================================================
# Examples / Test cases
# ==============================================================================
array1 = [2, 5, 9, 8, 4, 16]
array2 = [2, -1, 4, 1, -5, 2]
array3 = [21, -12, 41]
array4 = [1, 2, 3, 4, 1, 0]
array5 = [5, 4, 6, 5, 3]
array6 = [4, -2, 3, 3, 4]

# p find_sum(array1, 9) #== [5, 4] 
# p find_sum(array2, -6) #== [-1, -5]
# p find_sum(array2, -7) #== nil
# p find_sum(array4, 2) #== [1, 1]
p find_sum(array5, 10) #== [4, 6]
# p find_sum(array6, 8) #== [4, 4]
