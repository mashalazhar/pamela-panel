Rails.application.routes.draw do
  root 'admins#index'

  resources :admin
  resources :courses
  resources :cohorts
  resources :instructors
  resources :students
end
