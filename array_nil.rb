array = [1, nil, 2, '']
a = array.map do |a|
  if a == ''
    next
  end
  a  
end

p a.compact