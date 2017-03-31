class Board
	attr_accessor :vidja
	def initialize
		@vidja = Array.new(9, "")
	end
	def to_s
  output = ""
    0.upto(8) do |position|
      output << " #{vidja[position] || position} "
      case position % 3
      when 0, 1 then output << "|"
      when 2 then output << "\n-----------\n" unless position == 8
    end
  end
  output
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