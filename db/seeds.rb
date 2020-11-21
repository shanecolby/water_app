# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
water = Water.new(name: "Ice-Mountain", price: 1.50, size: "small")
water.save

water = Water.new(name: "Fiji", price: 4.50, size: "medium")
water.save

water = Water.new(name: "Great Value", price: 3.50, size: "large")
water.save