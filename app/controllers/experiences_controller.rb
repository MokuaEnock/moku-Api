class ExperiencesController < ApplicationController
  def index
    render json: Experience.all
  end

  def create
    exp = Experience.create(expr_params)
    render json: exp
  end

  def show
    @experience = Experience.find(params[:id])
    @roles = @experience.roles
    render json: @experience, include: "roles"
  end

  private

  def expr_params
    params.permit(
      :title,
      :location,
      :company_name,
      :company_link,
      :start_date,
      :end_date
    )
  end
end
