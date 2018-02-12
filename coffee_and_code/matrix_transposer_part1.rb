# ==============================================================================
# Instructions
# ==============================================================================
=begin
In today's kata we will be writing a "Transpose" method that will transpose a 
3 x 3 grid of arrays, without using the built-in Array#transpose method or Matrix 
class.

The grid will look like this:
1  5  8
4  7  2
3  9  6

And it will be structured as an array of sub_arrays, like this:
[
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

Once transposed, it will look like this:
1  4  3
5  7  9
8  2  6

We will also want to ensure that this method is *not mutative* - it will not change
the object that called it. Once you have completed this exercise, reach out to me for
the follow up!
=end 


# ==============================================================================
# Your Method
# ==============================================================================
# Do your work here

def transpose(matrix)
array1 = []
array2 = []
array3 = []
retrun_matrix = []

matrix.each do |element_1, element_2, element_3|
   array1 << element_1
   array2 << element_2
   array3 << element_3
  end 
   retrun_matrix << array1 
   retrun_matrix << array2
   retrun_matrix << array3 
  return retrun_matrix
end




# ==============================================================================
# Examples / Test cases
# ==============================================================================
matrix = [
    [1, 5, 8],
    [4, 7, 2],
    [3, 9, 6]
  ]
  
  new_matrix = transpose(matrix)
  
  p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
  p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
  
 