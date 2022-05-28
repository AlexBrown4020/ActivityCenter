class HangmanController < ApplicationController

respond_to? :html, :json

    def initialize
        session[:lives] = 7
        @words = ["chrysalis", "zap", "hundred", "ruby", "python", "hippopotamus",]
        session[:secret_word] = @words.sample
        session[:board] = [" _ "] * session[:secret_word].size
        @abc = "New game started    "<< session[:user_string]
            respond_with @abc
    end

    # def board

    # end

    # def process_letter
    #     @id = params[:id]
    #     puts @id
    # end
    
    # def create
    #     @letter = Letter.new(letter_params)

    #     if @letter.save
    #         if request.xhr?
    #             render json: {success: true}
    #         else
    #             redirect_to @letter, notice: "Letter was sent"
    #         end
    #     else
    #         render :new
    #     end
    # end

    # def words
    #     @words = [
    #         "chrysalis",
    #         "zap",
    #         "hundred",
    #         "ruby",
    #         "python",
    #         "hippopotamus",
    #     ]
    # end

    # define secret_word
    # def secret_word
    #     @secret_word = @words.sample
    # end

    #board state
    # def board_state
    #     @board.join(" ")
    # end
    

    #update board
    def update_board(guess)
        if @secret_word.include?(guess)
            i = 0
            while i < @secret_word.size
                if guess.downcase == @secret_word[i].downcase
                    @board[i] = @secret_word[i]
                end
                i += 1
            end
        else
            @lives -= 1
            print "There are no #{guess}'s. "
        end
    end

    #define guess logic
    def make_guess
        params[:letter]
    end

    # win logic
    def won?
        @board.join("") == @secret_word
    end

    # Start function
    def start
        puts "Welcome to Hangman"
        while @lives > 0 && !won?
            puts "You have #{@lives} lives left. Please make a guess: "
            # puts board_state
            guess = make_guess
            update_board(guess)
        end
         if won?
            puts "You win!"
         else 
            puts "You lost!"
        end
    end
end
