Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles

  namespace :api do
    get   '/articles' => 'articles#index'
    get   '/articles/:id' => 'articles#show'
    post  '/articles' => 'articles#create'
  end
end
