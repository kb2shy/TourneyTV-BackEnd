class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update]

  def index
    @teams = Team.all
  end

  def new
  end

  def show
    if @team.valid?
      render :json => { name: @team.name, city: @team.city }, response: :ok
    else
      render :json => { error: "Team cannot be found" }, response: :not_found
    end
  end

  def create
    @team = Team.new(team_params)
    if @team.valid?
      @team.save
      render :json => { name: @team.name, city: @team.city }, response: :created
    else
      render :json => { error: "Team cannot be created" }, response: :bad_request
    end
  end

  def edit
  end

  def update
    if @team.update(team_params)
      redirect_to @team
    else
      render :json => { error: "Cannot update team"}, response: :unprocessable_entity
    end
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :city)
  end
end
