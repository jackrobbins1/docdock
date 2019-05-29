class Api::V1::FoldersController < ApplicationController
  before_action :find_folder, only: [:show, :update, :destroy]

  def index
    @folders = Api::V1::Folder.all

    render json: @folders
  end


  def show
    render json: @folder
    @files = @folder.files
    render json: @files
  end

  def create
    @folder = Api::V1::Folder.new(folder_params)

    if @folder.save
      render json: @folder
    # else
    #   render json: @folder.errors, status: :unprocessable_entity
    end
  end

  def update
    if @folder.update(folder_params)
      render json: @folder
    # else
    #   @folder.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @folder.destroy
    render json: @folders
  end



  private

  def find_folder
    @folder = Api::V1::Folder.find(params[:id])
  end

  def folder_params
    params.require(:folder).permit(:name, :picture, :star, :description, :user_id, :parent_folder_id)
  end
end
