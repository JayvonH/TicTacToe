require_relative "Board.rb"
require_relative "game.rb"
require_relative "Cpurando.rb"
require_relative "Cpueasy.rb"
p1 = Easy.new("player1", "x")
p2 = Randomplayer.new("player2", "o")
game = Game.new(p1, p2)
board = Board.new
turn = 1
while true
	game.change_player
	print "\n#{game.current_player.name} #{turn}\n"
	game.move(board,game.current_player.movements(board), game.current_player)
	turn += 1
	game.display(board)
	break if game.winner?(board)
end