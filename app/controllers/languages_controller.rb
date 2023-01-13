class LanguagesController < ApplicationController
  def index
    render json: Language.all
  end

  def create
    lan = Language.create(lan_params)
    render json: lan
  end

  private

  def lan_params
    params.permit(:name, :description)
  end
end
