class Skill < ApplicationRecord
  has_many :skill_certifications
  has_many :certifications, through: :skill_certifications
end
