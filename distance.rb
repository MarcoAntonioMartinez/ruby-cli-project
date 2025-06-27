# global hash has key like 11 = City A, City D, 12 City A, City E, etc.
# value is random distance btw cities
$distance_hash = { "11" => 10, "12" => 28, "13" => 32, "21" => 28, "22" => 14, "23" => 11, "31" => 32, "32" => 11, "33" => 21 }


class Distance
  attr_accessor :start_pt
  attr_accessor :end_pt

  #initializes object with starting city and destination city
  def initialize(start_pt, end_pt)
    @start_pt = start_pt
    @end_pt = end_pt
  end

  # takes the key which represents starting point and ending point and calculates distance between the 2
  #  by looking up in distance hash
  def distance_calc(key)
    pp "To go from #{@start_pt} to #{@end_pt} it will take you #{$distance_hash[key]} miles."
  end
end

 
starting_pt = ""

# prompt user for starting city
start_city = { "1"=>"City A", "2"=>"City B", "3"=>"City C"}
puts "\nChoose your starting point: "
puts "\t1. City A" 
puts "\t2. City B" 
puts "\t3. City C"

# while there is input, check if user selected from list
while s_input = gets.chomp
  if s_input.to_i.between?(1,3)
    starting_pt = start_city[s_input]
    break
  else
    puts "Please enter an option from the list"
  end
end

destination = ""

end_city = { "1"=>"City D", "2"=>"City E", "3"=>"City F"}
puts "\nChoose your destination: "
puts "\t1. City D"
puts "\t2. City E"
puts "\t3. City F"
while d_input = gets.chomp
  if d_input.to_i.between?(1,3)
    destination = end_city[d_input]
    break
  else
    puts "Please enter an option from the list"
  end
end

# create hash key used for distance lookup
dist_key = s_input + d_input


dist = Distance.new(starting_pt, destination)

dist.distance_calc(dist_key)
