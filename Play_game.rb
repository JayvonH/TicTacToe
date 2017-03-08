require_relative "Board.rb"
require_relative "game.rb"
require_relative "Cpueasy.rb"
p1 = Easy.new("player1", "x")
p2 = Easy.new("player2", "o")
game = Game.new(p1, p2)
board = Board.new
turn = 0
while true
	game.change_player
	print "#{p1.name}#{turn}"
	game.move(board,game.current_player.movements(board), game.current_player)
	game.display(board)
	break if game.winner?(board)

end
