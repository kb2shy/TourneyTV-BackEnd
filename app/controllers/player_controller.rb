class PlayerController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update]

  def show
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:username, :password, :firstname, :lastname, :image, :position, :jersey, :team_id)
  end
end
