class Certification < ApplicationRecord
  has_many :skill_certifications
  has_many :skills, through: :skill_certifications
end
