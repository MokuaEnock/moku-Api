class MessagesController < ApplicationController
  def create
    message = Message.create
  end

  private

  def mes_params
    params.permit(:project_id, :name, :email, :description)
  end
end
