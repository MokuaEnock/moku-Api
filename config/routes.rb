Rails.application.routes.draw do
  resources :units
  resources :educations
  resources :certifications
  resources :skill_certifications
  resources :tags
  resources :roles
  resources :experiences
  resources :messages
  resources :projects
  resources :languages
  resources :skills
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
    end
  end
  
  # Defines the root path route ("/")
  # root "articles#index"
end
