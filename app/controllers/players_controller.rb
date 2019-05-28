class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update]
  skip_before_action :authorized

  def index
    @players = Player.all.sort
    if @players
      render :json => @players, response: :ok
    else
      render :json => {error: "Players not found"}, response: :not_found
    end
  end

  def show
    if @player.valid?
      render :json => @player, response: :ok
    else
      render :json => {error: "Player not found"}, response: :not_found
    end
  end

  def create
    @player = Player.create(player_params)
    if @player.valid?
      @token = encode_token(player_id: @player.id)
      render :json => {player: PlayerSerializer.new(@player), jwt: @token}, status: :created
    else
      render :json => {error: "Player account cannot be created"}, response: :not_acceptable
    end
  end

  def profile
    render :json => { player: PlayerSerializer.new(current_user)}, status: :accepted
  end

  def edit
  end

  def update
    if @game.update(player_params)
      redirect_to @player
    else
      render :json => {error: "Cannot update player"}, response: :unprocessable_entity
    end
  end

  def destroy
    Player.find(params[:id]).destroy
    redirect_to @players
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:username, :password, :firstname, :lastname, :image, :position, :jersey, :team_id)
  end
end
