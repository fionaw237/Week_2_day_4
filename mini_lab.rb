pets = [
  {
    name: "Sir Percy",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
  },
  {
    name: "King Bagdemagus",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
  },
  {
    name: "Sir Lancelot",
    pet_type: :dog,
    breed: "Pomsky",
    price: 1000,
  },
  {
    name: "Arthur",
    pet_type: :dog,
    breed: "Husky",
    price: 900,
  },
  {
    name: "Tristan",
    pet_type: :dog,
    breed: "Basset Hound",
    price: 800,
  },
  {
    name: "Merlin",
    pet_type: :cat,
    breed: "Egyptian Mau",
    price: 1500,
  }
]

## Task: using enumerable methods:
## 1. Find the pet whose breed is Husky
p pets.find {|pet| pet[:breed] == "Husky" }

## 2. Make an array of all of the pets' names
pet_names = pets.map{|pet| pet[:name]}
p pet_names
#could use collect instead of map

## 3. Find out if there are any pets of breed 'Dalmation' (this should return `true` or `false`)
p pets.any? {|pet| pet[:breed] == "Dalmation"}
# p pets.find {|pet| pet[:breed] == "Dalmation"} ? true : false

## 4. Find the most expensive pet i.e. the pet with the highest price
p pets.max_by {|pet| pet[:price]}
#can also use max - some differences to look into

## 5. Find the total value (price) of all of the pets added together.
#longer way:
# pet_prices = pets.map {|pet| pet[:price]}
#  p pet_prices.reduce {|total, price| total + price}

#p pets.map {|pet| pet[:price]}.sum()

p pets.sum {|pet| pet[:price]}

#simpler way?
#p pets.reduce(0){|total, pet| total + pet[:price]}
#

## 6. Change each pet so their price is 50% cheaper
pets.each {|pet| pet[:price] *= 0.5}
p pets
