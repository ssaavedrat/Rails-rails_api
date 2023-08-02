class WorldCupTeamsController < ApplicationController
  before_action :set_world_cup_team, only: %i[ show update destroy ]

  # GET /world_cup_teams
  def index
    @world_cup_teams = WorldCupTeam.all

    render json: @world_cup_teams
  end

  # GET /world_cup_teams/1
  def show
    render json: @world_cup_team
  end

  # POST /world_cup_teams
  def create
    @world_cup_team = WorldCupTeam.new(world_cup_team_params)

    if @world_cup_team.save
      render json: @world_cup_team, status: :created, location: @world_cup_team
    else
      render json: @world_cup_team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /world_cup_teams/1
  def update
    if @world_cup_team.update(world_cup_team_params)
      render json: @world_cup_team
    else
      render json: @world_cup_team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /world_cup_teams/1
  def destroy
    @world_cup_team.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_world_cup_team
      @world_cup_team = WorldCupTeam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def world_cup_team_params
      params.require(:world_cup_team).permit(:name)
    end
end
