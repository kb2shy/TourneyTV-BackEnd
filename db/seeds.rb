# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

# Player.find(10).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(11).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(12).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(13).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(14).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(15).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(16).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(17).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(18).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(19).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(20).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(21).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(22).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(23).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")
# Player.find(24).update(image: "https://www.dccomics.com/sites/default/files/styles/character_thumb_160x160/public/Char_Profile_Penguin_5c5250a8ad2683.23365592.jpg?itok=FJMNf6yw")

@players = Player.all.sort
@players.each do |player|
  player.update(password: "123")
end
