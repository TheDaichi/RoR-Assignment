Rails.application.routes.draw do
  devise_for :people
  root to: "app_pages#welcome"
  resources :articles do
    resources :comments, module: :articles
  end
  mount ActionCable.server => '/cable'
end
