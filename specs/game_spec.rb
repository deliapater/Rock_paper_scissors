require 'minitest/autorun'
require_relative '../models/game'


class TestGame < Minitest::Test

  def setup
    @game = Game.new("paper", "scissors")
  end

  def test_player_results
    assert_equal("PC wins by playing scissors!", @game.play)
  end

end
