class LanguagesController < ApplicationController
  def index
    render json: Language.all
  end

  def create
    lan = User.create(lan_params)
    render json: lan
  end

  private

  def lan_params
    params.permit(:name, :decription)
  end
end
