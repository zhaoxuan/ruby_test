require 'benchmark'



puts Benchmark.measure{

  1.times do
    ra = rand(100)
    cmd = "convert -size x20 -gravity center -background white -font /home/zx/chinese_font.ttf -fill red -pointsize 16 label:\"赵烜123\" /home/zx/tmp/#{ra}.jpg"
    `#{cmd}`
  end
} 
