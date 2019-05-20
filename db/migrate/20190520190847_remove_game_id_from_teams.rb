class RemoveGameIdFromTeams < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :game_id
  end
end
