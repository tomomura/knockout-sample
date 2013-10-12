Knockout::Application.routes.draw do
  root 'top_pages#index'

  resources :tasks, only: [:index]
  resources :top_pages, only: [:index]
end
