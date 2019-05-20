class Game < ApplicationRecord
  has_many :gameschedules
  has_many :teams, through: :gameschedules
end
