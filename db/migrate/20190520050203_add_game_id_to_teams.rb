class AddGameIdToTeams < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :game, foreign_key: true
  end
end
