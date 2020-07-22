require_relative '../config/environment.rb'
require "pry"
require_relative '../app/models/landmark.rb'
require_relative '../app/models/tourist.rb'
require_relative '../app/models/trip.rb'

alex = Tourist.new("Alex")
robin = Tourist.new("Robin")
deanne = Tourist.new("Deanne")

duomo_mi = Landmark.new("Duomo", "Milano")
sanmarco_ve = Landmark.new("San Marco", "Venezia")
colosseo_ro = Landmark.new("Colosseo", "Roma")
trevi_ro = Landmark.new("Trevi", "Roma")

alex.visit_landmark(duomo_mi)
alex.visit_landmark(colosseo_ro)
robin.visit_landmark(sanmarco_ve)
deanne.visit_landmark(duomo_mi)

#p duomo_mi.trips
p duomo_mi.tourists
#p Landmark.find_by_city("Roma")

# p robin.landmarks
# puts "\n"
# p robin.never_visited

# puts "Alex's trips:"
# p alex.trips
# puts "\n"
# puts "Landmarks visited"
# p alex.landmarks
# puts "\n"
# puts "Never visited"
# p alex.never_visited

#binding.pry

#p deanne.name
#p duomo_mi.city