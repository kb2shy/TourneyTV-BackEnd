class Team < ApplicationRecord
  has_many :players
  has_many :gameschedules
  has_many :games, through: :gameschedules
  validates :name, :city, presence: true
end
