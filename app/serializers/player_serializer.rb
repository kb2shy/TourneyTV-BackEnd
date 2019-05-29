class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :image, :position, :jersey, :team,
  :isScoreKeeper, :isTeamCaptain
end
