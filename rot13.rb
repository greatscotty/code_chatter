
def rot13 (text)
array = []
alphabet = ('A'..'z').to_a
array = text.chars
array.each do |x|
    puts alphabet.index{ x }
end 

end

# ==============================================================================
# Instructions
# ==============================================================================
=begin
ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

Create a function that takes a string and returns the string ciphered with Rot13. If there are numbers or special characters included in the string, they should be returned as they are. Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".
=end 


# ==============================================================================
# Your Method
# ==============================================================================
# Do your work here




# ==============================================================================
# Examples / Test cases
# ==============================================================================

p rot13("test") == "grfg"
p rot13("Test") == "Grfg"
p rot13("Coffee and Code") == "Pbssrr naq Pbqr"
p rot13("B33R aNd C0D3!!") == "O33E nAq P0Q3!!"