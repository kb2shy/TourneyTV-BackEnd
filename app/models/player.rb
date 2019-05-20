class Player < ApplicationRecord
  belongs_to :team, optional: true
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true
end
