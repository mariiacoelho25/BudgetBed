Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'registrations/new'
  devise_for :users
  root to: "pages#home"

  get 'signup', to: 'registrations#new'
  post 'signup', to: 'registrations#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
