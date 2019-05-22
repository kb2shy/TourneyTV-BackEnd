class GameSerializer < ActiveModel::Serializer
  attributes :id, :courtnum, :team1score, :team2score, :teams
  def teams
    self.object.teams.map do |team|
      {name: team.name, city: team.city, image: team.image}
    end
  end
end
