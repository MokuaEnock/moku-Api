class ProjectTypesController < ApplicationController
  def index
    render json: ProjectType.all
  end

  def create
    pro = ProjectType.create(type_s)
    render json: pro
  end

  private

  def type_s
    params.permit(:name, :description)
  end
end
