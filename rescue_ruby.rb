10.times do |v|
  if v == 5
    begin
      raise "NO"
    rescue Exception => e
      p e
    ensure
      next
    end
  else
    p v
  end
end