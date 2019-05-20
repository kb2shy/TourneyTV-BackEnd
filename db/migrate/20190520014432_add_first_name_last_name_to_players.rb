class AddFirstNameLastNameToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :firstname, :string
    add_column :players, :lastname, :string
  end
end
