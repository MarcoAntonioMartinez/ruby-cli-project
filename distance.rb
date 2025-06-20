class Distance
  attr_accessor :start_pt
  attr_accessor :end_pt

  def initialize
    @start_pt = start_pt
    @end_pt = end_pt
  end

  def distance_calc()
    puts "#{@start_pt}"
    puts "#{@end_pt}"

  end
end


pp "Choose your starting point 1. City A 2. City B 3. City C"
s_input = gets.chomp

pp s_input

starting_pt = ""

pp "Choose your destination 1. City D 2. City E 3. City F"
d_input = gets.chomp

pp d_input

destination = ""


case s_input
when "1"
  starting_pt = "City A"
when "2"
  starting_pt = "City B"
when "3"
  starting_pt = "City C"
else
  pp "You gave me #{s_input} -- I have no idea what to do with that."
end

case d_input
when "1"
  destination = "City D"
when "2"
  destination = "City E"
when "3"
  destination = "City F"
else
  pp "You gave me #{d_input} -- I have no idea what to do with that."
end
pp "#{s_input} #{d_input} "
pp starting_pt 

pp destination

dist = Distance.new
dist.start_pt = starting_pt
dist.end_pt = destination
dist.distance_calc
#could just change cases to just hash make two hashes for the start and ends
