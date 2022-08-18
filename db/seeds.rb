# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating games"

@games = [
    { name: "Pokemon Ruby",
      genre: "adventure",
      price: 15,
      platform: "gameboy",
      condition: "new" },
    { name: "Red Dead Redemption",
      genre: "cowboys",
      price: 55,
      platform: "PS4",
      condition: "new"},
    { name: "Gta V",
      genre: "Shooter",
      price: 30,
      platform: "PS5",
      condition: "semi-new"}
]

@games.each do |game|
  game = Game.new(game)
  game.save!
  puts "Created #{game.name}"
end

puts "games created successfully"
