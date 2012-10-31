class RoundArray
  def initialize(number)
    @number = number
    @turn_times = get_turn_times
    @steps = get_steps
    @directions = get_directions
    @dimension = get_dimension
    @result_array = structrued_array
    @current_row = @current_column = get_center
  end

  def structure
    i = 1
    while i <= @number
      steps = next_steps
      direction = next_direction
      steps.times do
        if i <= @number
          set_value(i)
          move(direction)
          i += 1
        end
      end
    end
    return @result_array
  end

  private
  def set_value(i)
    @result_array[@current_row][@current_column] = i
  end
  
  def move(direction)
    case direction
    when "go_left"
      @current_column -= 1
    when "go_down"
      @current_row += 1    
    when "go_right"
      @current_column += 1
    when "go_up"
      @current_row -= 1
    end
  end
  
  def structrued_array
    Array.new(@dimension){Array.new(@dimension){nil}}
  end
    
  def get_dimension
    Math.sqrt(@number).ceil
  end
          
  def get_turn_times
    get_dimension * 2 - 1
  end
          
  def get_directions
    (%w(go_right go_down go_left go_up)*(@turn_times)).reverse
  end
          
  def get_steps
    step = []
    (1..(@turn_times)).each do |i|
      step << i
      step << i
    end
    step.reverse
  end
        
  def get_center
    (Math.sqrt(@number).ceil - 1) / 2
  end
        
  def next_steps
    @steps.pop
  end
        
  def next_direction
    @directions.pop
  end
end

10.times do 
  puts RoundArray.new(399980001).structure
end

# describe RoundArray do
#   describe "circle" do 
#     it "should return a round array with well number" do
#       RoundArray.new(81).structure.should == [[73, 74, 75, 76, 77, 78, 79, 80, 81], [72, 43, 44, 45, 46, 47, 48, 49, 50], [71, 42, 21, 22, 23, 24, 25, 26, 51], [70, 41, 20, 7, 8, 9, 10, 27, 52], [69, 40, 19, 6, 1, 2, 11, 28, 53], [68, 39, 18, 5, 4, 3, 12, 29, 54], [67, 38, 17, 16, 15, 14, 13, 30, 55], [66, 37, 36, 35, 34, 33, 32, 31, 56], [65, 64, 63, 62, 61, 60, 59, 58, 57]]
#     end
    
#     it "should return a round array with dimension even number" do
#       RoundArray.new(16).structure.should == [[7, 8, 9, 10], [6, 1, 2, 11], [5, 4, 3, 12], [16, 15, 14, 13]]
#     end
    
#     it "should return a round array with compatible number" do
# RoundArray.new(81).structure.each do |a|
#   p a
# end

#       RoundArray.new(17).structure.should == [[nil, nil, nil, nil, nil], [nil, 7, 8, 9, 10], [nil, 6, 1, 2, 11], [nil, 5, 4, 3, 12], [17, 16, 15, 14, 13]]
#       RoundArray.new(79).structure.should == [[73, 74, 75, 76, 77, 78, 79, nil, nil], [72, 43, 44, 45, 46, 47, 48, 49, 50], [71, 42, 21, 22, 23, 24, 25, 26, 51], [70, 41, 20, 7, 8, 9, 10, 27, 52], [69, 40, 19, 6, 1, 2, 11, 28, 53], [68, 39, 18, 5, 4, 3, 12, 29, 54], [67, 38, 17, 16, 15, 14, 13, 30, 55], [66, 37, 36, 35, 34, 33, 32, 31, 56], [65, 64, 63, 62, 61, 60, 59, 58, 57]]
#     end    
#   end
# end