class Randomplayer
	attr_accessor :marker, :name
	def initialize(name, marker)
		@name = name
		@marker = marker
	end
	def movements(board)
		avaliable_places = board.vidja.each_index.select{|i| board.vidja[i] == ''}
		avaliable_places[rand(avaliable_places.length)-1]
	end

end
