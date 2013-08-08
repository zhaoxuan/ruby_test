def func
  begin
    raise "some errors"
  rescue Exception => e
    p 'error'
    exit
  end
end

func
p '123'