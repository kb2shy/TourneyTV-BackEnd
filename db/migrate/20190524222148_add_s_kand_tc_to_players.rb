class AddSKandTcToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :isScoreKeeper, :boolean, default: false
    add_column :players, :isTeamCaptain, :boolean, default: false
  end
end
