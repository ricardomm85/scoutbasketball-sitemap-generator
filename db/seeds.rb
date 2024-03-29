# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Player.destroy_all
p 'Destroyed all players'

100.times do
  Player.create!(
    name: Faker::Name.name,
    surname: Faker::Name.name,
    height: rand(1.5..2.2),
    birthyear: rand(1990..2020)
  )
end

p "Created #{Player.count} players"
