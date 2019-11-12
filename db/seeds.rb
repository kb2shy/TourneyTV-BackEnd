# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

position = ["Setter", "Outside", "Middle", "Opposite", "Libero", "Defensive Specialist"]
count = 2

# 35.times do
  firstname = Faker::Name.male_first_name
  lastname = Faker::Name.unique.last_name
  username = firstname + lastname
  position = position[rand(0..5)]
  # player = Player.create(
  #   username: username,
  #   password: "123",
  #   firstname: firstname,
  #   lastname: lastname,
  #   image: "https://randomuser.me/api/portraits/men/" + count + ".jpg",
  #   jersey: rand(1..99),
  #   position: position,
  #   isScoreKeeper: false,
  #   isTeamCaptain: false,
  # )
# end

# @players = Player.all.sort
# @players.each do |player|
#   player.update(password: "123")
# end
