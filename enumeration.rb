chickens = ["Margaret", "Hetty", "Henrietta", "Audrey", "Mabel"]

# chickens.each {|chicken| p chicken}

# chickens.each do |chicken|
#   shouting = chicken.upcase()
#   p shouting
# end
#
# chicken_lengths = []
# chickens.each {|chicken| chicken_lengths << chicken.length()}
#
# p chicken_lengths

#MAP
# chicken_lengths = chickens.map { |chicken| chicken.length() }
# p chicken_lengths

#EACH WITH INDEX
# chickens.each_with_index { |chicken, index| p "#{chicken} is at index #{index}"}

#FIND
# p chickens.find { |chicken| chicken[0] == "H" }
# as soon as it finds one, it exits the loop

#FIND ALL
#p chickens.find_all { |chicken| chicken[0] == "H" }

#REDUCE (reduces many things into one thing) - works on data types known as enumerables
p chickens.reduce { |list, chicken| list + ", " + chicken }

numbers = [2, 4, 6, 8, 10]
p numbers.reduce {|sum, number| sum + number}
#sum starts at 0 then adds number at every step
