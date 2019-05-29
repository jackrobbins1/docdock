class Api::V1::UsersController < ApplicationController
  before_action :get_user, only: [:show, :update, :destroy]

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user = @user.destroy
    render json: @user
  end

# methods to show user's homepage
  def show
    # @user = Api::V1::User.find(params[:id])
    render json: {
      name: @user.name,
      folders: @user.folders
    }
  end
  #
  # def user_folders
  #
  # end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :avatar)
  end
end
