Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  # ↪︎このルーティングはユーザー情報の編集へ繋がる
  resources :rooms, only: [:new, :create]
  # ↪︎ルームの新規作成のためのルーティング
end
