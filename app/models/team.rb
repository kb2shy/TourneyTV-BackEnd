class Team < ApplicationRecord
  has_many :players
  belongs_to :game, optional: true
  validates :name, :city, presence: true
end
