class RolesController < ApplicationController
  belongs_to :experience, foreign_key: true
end
