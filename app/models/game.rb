class Game < ApplicationRecord
  has_many :gameschedules
  has_many :teams, through: :gameschedules

  def as_json(options={})
    super(:except => [:created_at, :updated_at])
  end
end
