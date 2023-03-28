# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Create Heroes
hero1 = Hero.create(name: Faker::Name.name, super_name: "Ms. Marvel")
hero2 = Hero.create(name: Faker::Name.name, super_name: "Squirrel Girl")
hero3 = Hero.create(name: Faker::Name.name, super_name: "Spider-Gwen")

# Create Powers
power1 = Power.create(name: "super strength", description: "gives the wielder super-human strengths")
power2 = Power.create(name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed")

# Assign Powers to Heroes
hero1.powers << [power1, power2]
hero2.powers << [power1]
hero3.powers << [power2]
