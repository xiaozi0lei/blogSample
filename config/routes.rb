Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    resources :comments
  end

  get 'welcome/index'

  root 'welcome#index'
  get 'tags/:tag', to: 'posts#index', as: :tag
end
