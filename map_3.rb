require 'rubygems'
require 'ruby-debug'


leght = nil
a = [[1, 2],[5], [4, 5, 6], [2, 5], [7], [4, 7], [7], []]

class Rmap

  def initialize(array, path, i)
    @path = path
    @array = array
    @i = i
  end

  def map
    path = @path + [@i + 1]

    if path.size > 3
        p path
      end

    if !@array[@i].empty?
      @array[@i].each do |a|
        rmap = Rmap.new(@array, path, a)
        rmap.map
      end
      
    end

  end
  
end

a.each_index do |i|
  ramp = Rmap.new(a, [], i)
  ramp.map
end 

