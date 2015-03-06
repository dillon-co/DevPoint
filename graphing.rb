  @y = []
# =
  @m =[]
  @x =[]
# +
  @b = []
# I'm using the vallues for the equation of a line and 
# tunrning them into arrays which I will put in the 
# make_angle" method with the intent of drawing a line at
# the angle given
arr = Array.new(10) {Array.new(10) {make_amgle}}
arr.each{|col| puts col.each {|row| row}.join(" ")}

arr.each_with_index do |col, y| 
  col.each_with_index do |row, x| 
    @y = y
    @x = x
  end
end

 = gets.chomp






def get_values
puts "give me an angle"
angle = gets.chomp
angle.split(' ')
if '45' in angle
  m = arr[@y] + 1
  @m << m
  
elsif angle == '10'

end  



def make_angle(y, m, x, b)
  y = mx + b
  arr[y] = (m * arr[x]) + arr[b] 
end  


def next(y, x)
  @next = arr[x][y]
end  


make_angle(@y, m)