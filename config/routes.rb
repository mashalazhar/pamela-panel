Rails.application.routes.draw do
  get 'admins/index'

  root 'admins#index'

  resources :admin
  resources :courses
  resources :cohorts
  resources :instructors
  resources :students
end
