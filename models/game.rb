class Game

  attr_accessor :player_input, :pc_input

  def initialize(player_input, pc_input)
    @player_input =  player_input
    @pc_input = pc_input
  end

  def play()
    player_input = @player_input
    pc_input = @pc_input

  if (player_input == "rock" || player_input == "paper" || player_input == "rock_paper_scissors")
    if player_input == pc_input
      return "Tie! Try again"
    elsif player_input == "rock" && pc_input == "rock_paper_scissors"
      return "Player wins by playing #{player_input}!"
    elsif player_input == "scissors" && pc_input == "rock"
      return "PC wins by playing #{pc_input}!"
    elsif player_input == "paper" && pc_input == "rock"
      return "Player wins by playing #{player_input}!"
    elsif player_input == "rock" && pc_input == "paper"
      return "PC wins by playing #{pc_input}!"
    elsif player_input == "paper" && pc_input == "scissors"
      return "PC wins by playing #{pc_input}!"
    elsif player_input == "scissors" && pc_input == "paper"
      return "Player wins by playing #{player_input}!"
    end
  end
end
end
