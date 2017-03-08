require_relative "Board.rb"
require_relative "Cpueasy.rb"
class Game
	def initialize (p1, p2)
		@p1 = p1
		@p2 = p2
		@current_player = p2
	end
	def display(board)
		top =[board.vidja[0],board.vidja[1],board.vidja[2]]
		middle = [board.vidja[3],board.vidja[4],board.vidja[5]]
		bottom = [board.vidja[6],board.vidja[7],board.vidja[8]]
		puts "#{top}"
		puts "#{middle}"
		puts "#{bottom}"
	end
	def move(board, index, player)
		board.vidja[index] = player.marker
	end
	def change_player
		if @current_player == p2
			@current_player = p1
		else
			@current_player = p2
		end
	end
	def winner?(board)
		result = false
						wins = [[board.vidja[0],board.vidja[1],board.vidja[2]],
                         [board.vidja[3],board.vidja[4],board.vidja[5]],
                         [board.vidja[6],board.vidja[7],board.vidja[8]],
                         [board.vidja[0],board.vidja[3],board.vidja[6]],
                         [board.vidja[1],board.vidja[4],board.vidja[7]],
                         [board.vidja[2],board.vidja[5],board.vidja[8]],
                         [board.vidja[0],board.vidja[4],board.vidja[8]],
                         [board.vidja[2],board.vidja[4],board.vidja[6]]]
                         wins.each do |winner|
                         	result = winner.count(@current_player.marker)== 3
                         	break if result
                         end
                         return result
                     end


end
# board = Board.new
# easy = Easy.new("player2","o")
# game = Game.new("p1", easy)
# game.move(board, easy.movements(board),easy)
# game.display(board)