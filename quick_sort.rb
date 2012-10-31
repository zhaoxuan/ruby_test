a = [5, 2, 4, 7, 8, 0, 9]

def quick_sort(array, begin_index, end_index)
  x = array[begin_index]
  begin_index = begin_index + 1
  while begin_index != end_index
    if array[begin_index] <= x
      begin_index += 1
    elsif array[end_index] > x
      end_index -= 1
    else
      t = array[begin_index]
      array[begin_index] = array[end_index]
      array[end_index] = t
    end
    
  end

  quick_sort(array[])
  
end

quick_sort(a, 0, 6)