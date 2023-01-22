class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes

  has_many :languages
end
