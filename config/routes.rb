Rails.application.routes.draw do
  resources :comments, only: [:create, :show]
  resources :posts
  root 'posts#index'

  devise_for :users, :controllers => {
                      registrations: 'registrations'
  }
end
