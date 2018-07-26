require("minitest/autorun")
require("minitest/rg")
require_relative("../game")
require_relative("../counter")
require_relative("../player")
require_relative("../dice")
require_relative("../board")
require_relative("../sladder")

class GameTest < MiniTest::Test

  def setup()
    @counter1 = Counter.new("Red")
    @counter2 = Counter.new("Yellow")
    @ladder = Sladder.new(6, 3)
    @snake = Sladder.new(43, -9)
    @board = Board.new(50, [@ladder, @snake])
    @player1 = Player.new("Upul", @counter1)
    @player2 = Player.new("Alistair", @counter2)
    @dice = Dice.new(6)
    @game = Game.new([@player1, @player2], @board, @dice)
  end

  def test_player_has_won()
    @player1.move_counter(50)
    result = @game.check_winner(@player1)
    assert_equal(true, result)
  end

  def test_game_won()
    @game.start_game()
    assert_equal(true, @game.is_won())
  end

end
