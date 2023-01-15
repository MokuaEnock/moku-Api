class MessagesController < ApplicationController
  def create
    message = Message.create(mes_params)
    render json: message
  end

  private

  def mes_params
    params.permit(:project_id, :name, :email, :description)
  end
end
