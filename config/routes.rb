Rails.application.routes.draw do
  root 'owners#index'

  resources :admin
  resources :courses
  resources :cohorts
  resources :instructors
  resources :students
end
