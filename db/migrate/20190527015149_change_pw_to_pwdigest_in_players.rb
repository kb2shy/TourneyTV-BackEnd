class ChangePwToPwdigestInPlayers < ActiveRecord::Migration[5.2]
  def change
    rename_column :players, :password, :password_digest
  end
end
