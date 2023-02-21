Rails.application.routes.draw do
  devise_for :users
  # devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'events#index'
  resources :users
  resources :events
  resources :attendances
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
