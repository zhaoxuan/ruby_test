require 'rubygems'
require 'ruby-debug'



coordinate = [0, 0]


def f_coordiante(coordinate, destination_coordinate)
  opt = 0
  max_1 = 1
  n = 1

  while !(coordinate == destination_coordinate)
     opt = opt % 4

    if opt == 0
      while (coordinate[0] != max_1) && !(coordinate == destination_coordinate)
        coordinate[0] += 1
        n += 1
        #p coordinate
        #p n
      end
      opt += 1

    end

    if opt == 1
      while (coordinate[1] != max_1) && !(coordinate == destination_coordinate)
        coordinate[1] +=  1
        n += 1
        #p coordinate
        #p n
      end
      opt += 1

    end

    if opt == 2
      while (coordinate[0] != -max_1) && !(coordinate == destination_coordinate)
        coordinate[0] -= 1
        n += 1
        #p coordinate
        #p n
      end
      opt += 1

    end

    if opt == 3
      while (coordinate[1] != -max_1) && !(coordinate == destination_coordinate)
        coordinate[1] -= 1
        n += 1
        #p coordinate
        #p n
      end
      opt += 1
      max_1 += 1
 
    end
    
  end
  p n
end

f_coordiante(coordinate, [1000, 1000])