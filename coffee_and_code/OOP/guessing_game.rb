class GuessingGame

    attr_accessor :guess, :guess_left, :target_number

    def play
        @target_number= rand(1..100)
        @guess_left = 7
        until guess_left == 0
            print remaining_guesses
            puts "Enter a number between 1 and 100"
            get_number
            too_low_to_high
            if guess_left == 0 
               p "YOU LOSE"
            end
        end 
    end

    def remaining_guesses
        puts "You have #{guess_left} guesses remaing. "
    end

    def get_number
        @guess = gets.chomp.to_i
    end

    def too_low_to_high
            if guess < 101 && guess > 0
                    @guess_left -=1  
            else  
                    puts "Invalid guess. Enter a number between 1 and 100: #{guess}"
            end 

        if target_number > guess
            puts "Your guess is too LOW!"
        elsif target_number < guess
            puts "Your guess is too HIGH!"
        else
            puts "Good job!! You guessed my number!"
        end
    end

end

game = GuessingGame.new
game.play


# class GuessingGame
#     NUMBER_OF_GUESSES = 7
    
#     attr_accessor :remaining_guesses, :guess
#     attr_reader :winning_number
    
#     def initialize
#       @winning_number = (1..100).to_a.sample
#       @remaining_guesses = NUMBER_OF_GUESSES
#       @guess = 0
#     end
    
#     def print_remaining_guesses
#       puts "You have #{remaining_guesses} guesses remaining."
#     end
    
#     def make_guess
#       puts "Enter a number between 1 and 100:"
#       self.guess = gets.chomp.to_i
#     end
    
#     def valid_guess?
#       (1..100).to_a.include?(guess)
#     end
    
#     def check_guess
#       if guess < winning_number
#         puts "Your guess is too low"
#         self.remaining_guesses -= 1
#       elsif guess > winning_number
#         puts "Your guess is too high"
#         self.remaining_guesses -= 1
#       end
#     end
    
#     def winning_guess?
#       guess == winning_number
#     end
    
#     def print_result
#       if winning_guess?
#         puts "You win!"
#       else
#         puts "You are out of Guesses! You lose!"
#       end
#     end
    
#     def play
#       loop do
#         loop do
#           print_remaining_guesses
#           make_guess
#           break if valid_guess?
#           puts "Invalid Guess."
#         end
#         break if winning_guess? || remaining_guesses == 0
#         check_guess
#       end
#       print_result
#     end
#   end