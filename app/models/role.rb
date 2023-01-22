class Role < ApplicationRecord
  belongs_to :experience, foreign_key: true
end
