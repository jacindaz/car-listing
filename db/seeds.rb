# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Manufacturer.create(name: "Toyota", country: "Japan")
# Manufacturer.create(name: "Honda", country: "Japan")
# Manufacturer.create(name: "Ferrari", country: "Italy")
# Manufacturer.create(name: "Volkswagen", country: "Germany")


Car.create!(manufacturer_id: 2, color: "red", year: "2014",
            mileage: 100, description: "Awesome red prius")
Car.create!(manufacturer_id: 4, color: "green", year: "2012",
            mileage: 5, description: "The cutest little green beetle.")
