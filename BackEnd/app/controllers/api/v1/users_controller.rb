class Api::V1::UsersController < ApplicationController
  require 'pry'

  def index
    @users = User.all
    render json: @users
  end

  def find_user
    @user = User.find(params[:id])
  end

  def create
    @user = User.find_or_create_by(user_params)
    render json: @user
    # binding.pry
    # @userteams = User.teams
    #THIS IS THE INFORMATION WE WANT TO PASS BACK TO THE FRONT END
    #render json: @userteams
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
