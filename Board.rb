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
end