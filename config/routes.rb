Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # 会員側のルーティング設定
  get 'homes' => 'public/homes#top'
  get 'homes/about' => 'public/homes#about'
  get 'items' => 'public/items#index'
  get 'items/:id' => 'public/items#show'
  resouces :orders
  resouces :customers
  resouces :cart_items
    # 管理者側のルーティング設定
  namespace :admin do
    resources :items, only: [:index, :show]
    resources :orders
    resources :homes
    resources :sessions
  end
end
