def get_time
  case Time.now.strftime("%H").to_i
  when 0,1,2,3,4,5,6,7
    return 1
  when 8,9,10,11
    return 2
  when 12,13
    return 3
  when 14,15,16,17
    return 4
  when 18,19,20,21,22,23
    return 5
  end
end

# require 'date'

class Date
  def dayname
     DAYNAMES[self.wday]
  end

  def abbr_dayname
    ABBR_DAYNAMES[self.wday]
  end
end

today = Date.today

puts Date.today.wday
puts today.abbr_dayname