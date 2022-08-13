GC.disable

an_array = []

loop do
  1000.times { an_array << "A" + "B" + "C" }
  puts an_array.size

  GC.start
  puts "There are #{GC.stat(:heap_live_slots)} live objects"

  sleep 1
end
