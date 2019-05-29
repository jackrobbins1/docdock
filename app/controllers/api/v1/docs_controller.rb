class Api::V1::DocsController < ApplicationController
  before_action :find_doc, only: [:show, :update, :destroy]

  def index
    @docs = Doc.all

    render json: @docs
  end


  def show
    render json: @doc
  end

  def create
    @doc = Doc.new(doc_params)

    if @doc.save
      render json: @doc
    # else
    #   render json: @doc.errors, status: :unprocessable_entity
    end
  end

  def update
    if @doc.update(doc_params)
      render json: @doc
    # else
    #   @doc.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @doc.destroy
    render json: @docs
  end



  private

  def find_doc
    @doc = Doc.find(params[:id])
  end

  def doc_params
    params.require(:doc).permit(:name, :picture, :star, :description, :user_id, :parent_doc_id)
  end

end
