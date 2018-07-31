Rails.application.routes.draw do
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:new, :show, :index, :create] do
    resources :doses, only: [:new, :create, :show]
  end
  resources :doses, only: [:destroy]
end
