class LanguageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description

  balongs_to :project
end
