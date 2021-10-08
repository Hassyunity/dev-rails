Rails.application.routes.draw do
  get 'home/index'
  get 'home/private'
  root "articles#index"

  resources :articles do
    resources :comments
    resources :books
    
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
