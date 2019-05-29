class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :image, :position, :jersey, :team,
  :isScoreKeeper, :isTeamCaptain
end
