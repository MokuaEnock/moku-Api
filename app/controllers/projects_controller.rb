class ProjectsController < ApplicationController
  def index
    render json: Project.all
  end

  def create
    project = Project.create(project_params)
    render json: project
  end

  def show
    project = Project.find(params[:id])
    render json: project
  end

  private

  def project_params
    params.permit(
      :name,
      :description,
      :short_description,
      :project_start,
      :project_end,
      :github_link,
      :live_link,
      :status,
      :field
    )
  end
end
