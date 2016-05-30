Rails.application.routes.draw do
  resources :reviews
  get 'reviews/latest'
  post '/rate' => 'rater#create', :as => 'rate'
  # devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :users, controllers: { registrations: "registrations" }
  resources :line_items
  resources :carts
  get 'store/index'
  get 'store/contact'

  resources :products do
    resources :reviews
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'store#index'
end
