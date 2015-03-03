class GameOfLife
  def initialize
    @board_width = 10
    @board_height = 10
    @alive = "8"
    @dead = " "
    @board = Array.new(@board_height) { Array.new(@board_width) {rand(1..2) == 1 ? @alive : @dead} }

def show_board(board)
  board.each do |row| 
    puts row.map { |col| col}.join(' ')
  end
end
    