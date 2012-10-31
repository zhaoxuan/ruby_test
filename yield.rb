#!/usr/bin/env ruby
require 'rubygems'
require 'digest/md5'
require 'base64'
require 'ruby-debug'

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