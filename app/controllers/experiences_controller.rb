class ExperiencesController < ApplicationController
  def index
    render json: Experience.all
  end

  def show
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
