# ==============================================================================
# Instructions
# ==============================================================================
=begin
In the previous exercise, we wrote a method that transposed a 3x3 grid.
For this exercise, we will now write a method that will transpose a matrix
of any size with at least one row and one column
=end 


=begin

in: x y z arrays 
out:arrays, transposed 
vars: out: new array

[x1, y1, z1],
[x2, y2, z2],
[x3, y3, z3]

outputs to 

[x1, x2, x3]
[y1, y2, y3]
[z1, z2, z3]


take all of the X values and input into single array, insert into returnArray
repeat for y and z

return transposed matrix


=end

# ==============================================================================
# Your Method
# ==============================================================================
# Do your work here

# require 'pry'

def transpose(matrix)
  returnArray = []
  matrix[0].length.times do |element2|
    tempArray = []
    matrix.length.times {|element1| tempArray << matrix[element1][element2]}
    returnArray << tempArray
  end
  returnArray
end


# ==============================================================================
# Examples / Test cases
# ==============================================================================
p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]