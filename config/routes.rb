Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users
  resources :posts do
    resources :likes
    resources :comments
  end

  resources :tags, only: :show
end
