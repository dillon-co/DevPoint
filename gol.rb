@board1 = [
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          ['0','0','0','0','0','0','0','0','0','0'],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          ['0','0','0','0','0','0','0','0','0','0'],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          ['0','0','0','0','0','0','0','0','0','0'],
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

@alive = '0'
@dead = ' '

def show_board(board)
  board.each do |row| 
    puts row.map { |col| col}.join(' ')
  end
end
#     Any live cell with fewer than two live neighbours dies, as if caused by under-population. < 2 == ""
#     Any live cell with two or three live neighbours lives on to the next generation. 2 == "" || 3 == ""
#     Any live cell with more than three live neighbours dies, as if by overcrowding. 4 == ""
#     Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction. 3 == "o"
  




@cell = @board1.each_with_index do |row, row_index|
  row.each_with_index do |col, col_index|
end  
end  



def rules(x, y, alive_count)
  if @board1[x][y] == '0'
    if alive_count < 2
      @board2[x][y] = ' '
    elsif alive_count == 2 || alive_count == 3
      @board2[x][y] = '0'
    elsif alive_count > 3
      @board2[x][y] = ' '
    end   
  elsif @board1[x][y] == ' '
    @board2[x][y] = '0' if alive_count == 3  
  end  
end     

show_board(@board1)
show_board(@board2)
  

def check_neighbors(y, x)
  @count = 0
    x == 9 ? a = x - 9 : a = x + 1
    x == 0 ? b = x + 9 : b = x - 1
    y == 9 ? c = y - 9 : c = y + 1
    y == 0 ? d = y + 9 : d = y - 1
  
  @neighbors = [
    @board1[d][b],
    @board1[d][x],
    @board1[d][a],
    @board1[y][b],
    @board1[y][a],
    @board1[c][b],
    @board1[c][x],
    @board1[c][a]
  ]
  @neighbors.each do |n|
     @count += 1 if n == @alive 
  end
  @count
end  
    

def iterate_each
  @board1.each_with_index do |col, col_index|
    col.each_with_index do |row, row_index|
      alive_neighbor_count = check_neighbors(col_index, row_index)
      rules(col_index, row_index, alive_neighbor_count)
    end 
  end 
end    

def looper()
while true  
system "clear"
iterate_each
@board1 = @board2
show_board(@board2)
sleep 0.25
end
end

looper()

=begin
RULES  
1. rescue Any live cell with fewer than two live neighbours dies, as if caused by under-population.
2. Any live cell with two or three live neighbours lives on to the next generation.
3. Any live cell with more than three live neighbours dies, as if by overcrowding.
4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

  
=end
