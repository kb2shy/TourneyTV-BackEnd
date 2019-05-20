class RemoveColumnFromPlayers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :players, :game, index: false
    remove_column :players, :name
    add_column :players, :username, :string
    add_column :players, :password, :string
    add_column :players, :image, :string
    add_column :players, :position, :string
    add_column :players, :jersey, :integer
    add_reference :players, :team
  end
end
