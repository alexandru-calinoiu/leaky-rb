GC.disable

an_array = []

loop do
  1000.times { an_array << "A" + "B" + "C" }
  puts an_array.size

  GC.start
  pp ObjectSpace.count_objects

  sleep 1
end
