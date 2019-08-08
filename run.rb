require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

zsl = Zoo.new("London Zoo", "London")
berlin = Zoo.new("Zoo Berlin", "Berlin")

lion = Animal.new("cat", 250, "MGM Lad", zsl)
cougar = Animal.new("cat", 150, "Flirty Mom", berlin)
puma = Animal.new("cat", 167, "Trainers", zsl)
tiger = Animal.new("cat", 207, "Stripey Lion", zsl)
zebra = Animal.new("zebra", 167, "Jazz Horse", berlin)
zebra2 = Animal.new("zebra", 167, "Jazzier Horse", berlin)

giraffe = Animal.new("giraffe", 300, "Tall Lad", berlin)





binding.pry
puts "done"
