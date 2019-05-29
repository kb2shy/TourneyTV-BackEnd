class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update]
  skip_before_action :authorized, only: [:create, :index]

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

  def edit
  end

  def update
    if @player.update(player_params)
      render :json => @player, response: :accepted
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
    params.require(:player).permit(:id, :username, :password, :password_digest, :firstname,
      :lastname, :image, :position, :jersey, :isScoreKeeper,
      :isTeamCaptain)
  end
end
