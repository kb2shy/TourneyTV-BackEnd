class RemoveColumnFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :p1_score
    remove_column :games, :p2_score
    add_column :games, :team1score, :integer
    add_column :games, :team2score, :integer
    add_column :games, :courtnum, :integer
  end
end
