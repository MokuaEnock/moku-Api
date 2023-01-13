class SkillsController < ApplicationController
  def index
    render json: Skill.all
  end

  def create
    skill = Skill.create(skill_params)
    render json: skill
  end

  private

  def skil_params
    params.permit(:name, :description)
  end
end
