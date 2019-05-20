class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]

  def index
    @games = Game.all.sort
    render :json => @games.map do |game|
                      return {id: game.id, court: game.courtnum,
                       team1score: game.team1score, team2score: game.team2score,
                       team1: game.teams[0], team2: game.teams[1]}
                    end
  end

  def show
    if @game.valid?
      render :json => { team1score: @game.team1score, team2score: @game.team2score,
                        teams: {team1: @game.teams[0], team2: @game.teams[1]}},
                        response: :created
    else
      render :json => { error: "Game not found" }, response: :not_found
    end
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to @game
    else
      render :json => { error: "Cannot update game scores" }, response: :unprocessable_entity
    end
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:team1score, :team2score, :courtnum)
  end

end
