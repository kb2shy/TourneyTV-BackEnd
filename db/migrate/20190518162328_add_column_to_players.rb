class AddColumnToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_reference :players, :game, foreign_key: true
  end
end
