# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

players = Player.all
players.each do |player|
  name = Faker::DcComics.unique.name.split(" ")
  player.update(
    firstname: name[0],
    lastname: name[1],
    image: '',
    position: '',
    jersey: 0,
   )
 end
