# ==============================================================================
# Instructions
# ==============================================================================
=begin
In this exercise you create an instance method "find" of a GroupByDifference class.

The group by difference class will have a state that is an array.

The find method will return all values in the array that are within "x" of each other.

That means for the array 
[5, 32, 5, 1, 31, 70, 30, 8]

If we call find(2), it will return
[5,5,30,31,32]
Because all of those values have another value in the array with a difference of 2 or less.
=end 




# ==============================================================================
# Your Method
# ==============================================================================
# Do your work here
require 'pry'

NOT COMPLETE 

class GroupByDifference
  def initialize(numbers)
    @numbers = numbers
  end
  
  def find(difference)
        index = 1
        @numbers.each do |x|
            @numbers[index..(@numbers.size-1)].each.with_object([]) do |y, temp_array|
              if (x - y).abs <= difference 
                 temp_array << y
              else
                 nil
              end 
            end
            index+=1 
        end.sort
    end
end


numbers.each_index.with_object([]) do |index, object| 
  if condition
    object << i
  end.sort


# ==============================================================================
# Examples / Test cases
# ==============================================================================

numbers = [5, 32, 5, 1, 31, 70, 30, 8]


p GroupByDifference.new(numbers).find(100) == [1,5,5,8,30,31,32,70]
# p GroupByDifference.new(numbers).find(3) == [5,5,8,30,31,32]
# p GroupByDifference.new(numbers).find(2) == [5,5,30,31,32]
# p GroupByDifference.new(numbers).find(0) == [5,5]
# p GroupByDifference.new([]).find(10) == []