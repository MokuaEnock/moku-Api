class MessagesController < ApplicationController
  def index
    render json: Message.all
  end

  def create
    message = Message.create(mes_params)
    render json: message
  end

  private

  def mes_params
    params.permit(:project_id, :name, :email, :description)
  end
end
