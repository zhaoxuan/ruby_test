class HelicalCoordinate

  def self.point(x, y)
    return 1 if x == 0 && y == 0
    
    if x.abs == y.abs && x > 0 && y < 0
      edge = 2 * y.abs + 1
      extra_edge = edge - 1
    elsif x.abs >= y.abs
      edge = x >= 0 ? (2*x -1) : (x.abs * 2)
      extra_edge = (edge % 2) == 0 ? (edge + edge/2 - y) : (edge + (edge -1) / 2 + y)
    else
      edge = (y >= 0) ? (2*y) : (2*y.abs + 1)
      extra_edge = (edge % 2) == 0 ? (edge/2 - x) : ((edge -1) / 2 + x)
    end

    sigma(1, edge -1) * 2 + extra_edge + 1
  end

  def self.sigma(s, e)
    ((s + e) * e) /2
  end

  def self.test
    ta = [
      [0,0], [1, 0], [1, 1], [0, 1], [-1, 1], [-1, 0], [-1, -1], [0, -1], [1, -1], [2, -1],
      [2, 0], [2, 1], [2, 2], [1, 2], [0, 2], [-1, 2], [-2, 2], [-2, 1], [-2, 0], [-2, -1],
      [-2, -2], [-1, -2], [0, -2], [1, -2], [2, -2], [3, -2], [3, -1], [3, 0], [3, 1],
      [3, 2], [3, 3]
    ]
    ta.each { |item| puts point(item[0], item[1])}
  end
end

#10.times do |variable|
for x in 1..1000
  for y in 1..1000
    n = HelicalCoordinate.point(x, y)
    puts n if x==1000 && y == 1000
  end
end  
#end
