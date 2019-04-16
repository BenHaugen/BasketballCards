class Api::V1::PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: @players
  end

  def find_player
    @player = Player.find(params[:id])
  end

  def create

    Player.destroy_all
    firstNameResponse = HTTParty.get("https://www.balldontlie.io/api/v1/players?search=#{form_params[:firstName]}")
    newplayers = firstNameResponse.first[1]
    Player.seeder(newplayers)
    Player.seedImages()
    @players = Player.all
    render json: @players
  end


  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :team_name, :img, :position, :weight_pounds, :height_feet, :height_inches, :logo)
  end

  def form_params
    params.permit(:firstName)
  end

end
