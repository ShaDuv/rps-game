require "pry"
require "rspec"

class RPS
  def initialize(player_choice)
    choices = ["rock", "paper", "scissors", "lizard", "spock"]
    @player_choice = player_choice
    @computer_choice  = choices.sample
  end #initialize

  def winner
    if @player_choice == "rock"
      if @computer_choice == "scissors" || @computer_choice == "lizard"
        p "Rock beats both scissors and lizard You win!"
      elsif @computer_choice == "rock"
        p "It's a tie...that NEVER happens(eye roll)."
      else
        p "Rock was probably not the most logical choice. You lose."
      end


    elsif @player_choice == "paper"
      if @computer_choice == "rock" || @computer_choice == "spock"
        p "Paper beats rock and disproves Spock. You win!"
      elsif @computer_choice == "paper"
        p "It's a tie...that NEVER happens(eye roll)."
      else
        p "Paper is eaten by a lizard and cut up by scissors. You lose."
      end

    elsif @player_choice == "scissors"
      if @computer_choice == "paper" || @computer_choice == "lizard"
        p "What a sharp choice. Scissors cuts both paper and lizzards. Gross, but you win!"
      elsif @computer_choice == "scissors"
        p "It's a tie...that NEVER happens(eye roll)."
      else
        p "Spock smashes Scissors (and as it always has) Rock crushes Scissors. You lose."
      end

    elsif @player_choice == "spock"
      if @computer_choice == "scissors" || @computer_choice == "rock"
        p "Spock smashes scissors and vaporizes rock. You win!"
      elsif @computer_choice == "spock"
        p "It's a tie...that NEVER happens(eye roll)."
      else
        p "Lizard poisons Spock and paper disproves Spock. You lose!"
      end

    elsif @player_choice == "lizard"
      if @computer_choice == "spock" || @computer_choice ==  "paper"
        p "Lizard eats paper and poisons Spock. You win!"
      elsif @computer_choice == "lizard"
        p "It's a tie...that NEVER happens(eye roll)."
      else
        p "Everyone knows that rock crushes lizard and scissors decapitates lizard! You lose."
      end #last if
    end #top if
  end #winner

  def print
    p @player_choice
    p @computer_choice
  end #print
end #class
p "Enter your choice, human. (rock, paper, scissors, lizard, Spock)"
player_choice = gets.chomp.downcase

game = RPS.new(player_choice)
game.print
game.winner
