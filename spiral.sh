ruby -eh,w=$LINES,$COLUMNS'
END { puts"\e[0m" }
c = [0,2,1,4,3,5,2,3].cycle.lazy.flat_map { |n| [n]*10 }
0.step { |y|
  print c.drop((10+Math.sin(y/3.183)*10).round).take(w).to_a.map.with_index { |n,i| "\e[48;5;#{16+n*6**((y/3+n*3+i/3)/h%3)}m " } * ""
  sleep 0.05 if h < y
}'