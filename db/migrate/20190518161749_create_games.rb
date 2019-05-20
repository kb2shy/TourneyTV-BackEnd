class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :p1_score
      t.integer :p2_score

      t.timestamps
    end
  end
end
