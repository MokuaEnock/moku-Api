class TagsController < ApplicationController
  def index
    render json: Tag.all
  end

  def create
    tag = Tag.create(tag_params)
    render json: tag
  end

  private

  def tag_params
    params.permit(:name, :description)
  end
end
