class Api::V1::TeamsController < ApplicationController

  require 'pry'

  def index
    @teams = Team.where(user_id: team_params[:user_id])
    render json: @teams
  end

  def show
    @teams = Team.where(user_id: params[:id])
    render json: @teams
  end

  def find_team
    @team = Team.find(params[:id])
  end

  def create
    @team = Team.find_or_create_by(team_params)
    # binding.pry
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
  end


  private

  def team_params
    params.require(:team).permit(:user_id, :team_name, :player1_first_name, :player1_last_name, :player1_team_name, :player1_img, :player1_id, :player2_first_name, :player2_last_name, :player2_team_name, :player2_img, :player2_id, :player3_first_name, :player3_last_name, :player3_team_name, :player3_img, :player3_id, :player4_first_name, :player4_last_name, :player4_team_name, :player4_img, :player4_id, :player5_first_name, :player5_last_name, :player5_team_name, :player5_img, :player5_id)
  end
end
