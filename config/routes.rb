Rails.application.routes.draw do
  get 'admins/index'

  root 'admins#index'

  resources :admins
  resources :courses
  resources :cohorts
  resources :instructors
  resources :students
end
