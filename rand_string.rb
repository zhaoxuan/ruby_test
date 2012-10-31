def rand_string(length)
  chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
  result = ''
  1.upto(length) do |i|
    result << chars[rand(chars.size-1)]
  end
  return result
end
