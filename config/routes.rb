Rails.application.routes.draw do
  get 'home/home'
  # devise_for :admins
  get 'sessions/new'

  # root :to => redirect("/admins/sign_in")
  # root to: 'devise/sessions#new'

  devise_for :admins
    devise_scope :admin do
    
      authenticated :admin do
      #modify to set the right homepage
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end



  resources :admins
  resources :courses
  resources :cohorts
  resources :instructors
  resources :students
end
