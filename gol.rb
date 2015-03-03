@board1 = [
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ','0',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ','0','0',' ',' ',' ',' '],
          [' ',' ',' ',' ','0','0',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ','0',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
        ]


@board2 = [
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
        ]




def show_board(board)
  board.each do |row| 
    puts row.map { |col| col}.join(' ')
  end
end
  


show_board(@board1)



@cell = @board1.each_with_index do |row, row_index|
  row.each_with_index do |col, col_index|
    @row = row_index
    @col = col_index
end  
end  

def check_neighbors(x, y)  
  @neighbors = [
  @board1[x-1][y-1],
  @board1[x][y-1], 
  @board1[x+1][y-1] unless x == 10
    @board[x-9][y-1],
  @board1[x-1][y],
  @board1[x+1][y] unless x == 10
    @board[x-9][y],
  @board1[x-1][y+1] unless y == 10
    @board[x-1][y-1],
  @board1[x][y+1] unless y == 10
    @board1[x][y-9], 
  @board1[x+1][y+1] unless y == 10 && x == 10
    @board[x-9][y-9]
]

  count = 0
  while true
  if @board1[x, y] == '0'
    @neighbors.each do |cell|
      if cell == '0'
        count += 1
      end
    if count > 3
      cell = ' ' 
      system 'clear'
      show_board(board1)    
    elsif count < 2
      cell = ' '
      system 'clear'
      sleep 0.1
      show_board(board1) 
   end 
  end  
  elsif @board1[x, y] == ' '
    @nieghbors.each do |cell|
      if cell == '0'
        count += 1 
      end
      if count == 3
        cell[x, y] == '0'
        system 'clear'
        sleep 0.1
        show_board(board1) 
      end   
    end  
    end     
  end
end

check_neighbors(@row, @col)


=begin
RULES  
1. rescue Any live cell with fewer than two live neighbours dies, as if caused by under-population.
2. Any live cell with two or three live neighbours lives on to the next generation.
3. Any live cell with more than three live neighbours dies, as if by overcrowding.
4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

  
=end



