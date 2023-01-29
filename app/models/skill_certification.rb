class SkillCertification < ApplicationRecord
  belongs_to :skill
  belongs_to :certification
end
