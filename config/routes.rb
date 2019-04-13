Rails.application.routes.draw do
  root to: 'pages#home'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'

  resources :projects, only: %i[index show] do
    resources :testemonials, only: :index
  end
end
