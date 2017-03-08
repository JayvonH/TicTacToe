require "minitest/autorun"
require_relative "Board.rb"
require_relative "game.rb"
class TestBoard < Minitest::Test
	def test_returns_empty_board
		board = Board.new
		assert_equal(["","","","","","","","",""], board.vidja)
	end
end