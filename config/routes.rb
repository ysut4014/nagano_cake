Rails.application.routes.draw do
  devise_for :customers, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  devise_for :admins, contorollers: {
    sessions: "admin/sessions"
  }
  
  get 'homes' => 'public/homes#top'
  get 'homes/about' => 'public/homes#about'
  get 'items' => 'public/items#index'
  get 'items/:id' => 'public/items#show'
  resources :orders
  resources :customers
  resources :cart_items

  namespace :admin do
    resources :items, only: [:index, :show]
    resources :orders
    resources :homes
    resources :sessions
  end
end
