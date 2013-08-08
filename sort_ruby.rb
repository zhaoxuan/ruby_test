a = [['single', '2009'], ['single', '2008']]
p a
p a.sort{|a, b| [a[0], a[1].to_i * 1] <=> [b[0], b[1].to_i * 1]}