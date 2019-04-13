class Api::V1::PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: @players
  end

  def find_player
    @player = Player.find(params[:id])
  end

  def create
    @player = Player.create(player_params)
    render json: @player
  end


  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :team_name, :img, :position, :weight_pounds, :height_feet, :height_inches, :logo)
  end



end
