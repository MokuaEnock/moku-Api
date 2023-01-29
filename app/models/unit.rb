class Unit < ApplicationRecord
  has_many :education_units
  has_many :units, through: :education_units
end
