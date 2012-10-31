a=gets.chomp
haxi={ 1=>'Monday',  2=>'Tuesday',  3=>'Wednesday',
  4=>'Thursday',  5=>'Firday',  6=>'Saturday',  7=>'Sunday',
  }
num=a.split(",")
i=1
j=0
record=[]
record[0]=num[0].to_i
if(num[0].to_i<=0 || num[num.length.to_i-1].to_i>7)
  print "ArguementError"
else
  while(i<num.length)
    b=num[i].to_i
    if(b==num[i-1].to_i+1)
      i=i+1
    else
      record[j+1]=num[i-1].to_i
      record[j+2]=num[i].to_i
      i=i+1
      j=j+2
    end
  end
  if(i==num.length)
    record[j+1]=num[num.length-1].to_i
  end
  print record
  i=0
  puts ""
  while(i<j+1)
    if(i==record.length-2)
      if(haxi[record[i]]==haxi[record[i+1]])
        print haxi[record[i]]
      else
        print haxi[record[i]]+'-'+haxi[record[i+1]]
      end
    else
      if(haxi[record[i]]==haxi[record[i+1]])
        print haxi[record[i]]+','
      else
        print haxi[record[i]]+'-'+haxi[record[i+1]]+','
      end
    end
    i=i+2
  end
end
