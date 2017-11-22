# ==============================================================================
# Instructions
# ==============================================================================
=begin
Write a method that will return the count of distinct case-insensitive alphabetic characters and
numeric digits that occur more than once in the input string. The input string can be assumed to
contain only alphabets (both uppercase and lowercase) and numeric digits.
=end 

# ==============================================================================
# Your Pseudocode(not required)
# ==============================================================================
# Do your work here


# ==============================================================================
# Your Method
# ==============================================================================
# Do your work here
def duplicate_count (text)
    letter=text.downcase.split(//)
    frequencies = Hash.new(0)
    letter.each do |letter|
        frequencies[letter]+=1
    end 
    
frequencies = frequencies.sort_by do | frequencies, count|
count
end 
frequencies.each do |letter, count|
  if count > 2
    counter +=1
    return counter
end 
print frequencies
end
end

# ==============================================================================
# Examples / Test cases
# ==============================================================================
p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2