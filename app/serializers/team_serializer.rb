class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :image, :players
  def players
    self.object.players.map do |player|
      {id: player.id, firstname: player.firstname, lastname: player.lastname, position: player.position,
       jersey: player.jersey, image: player.image}
    end
  end
end
