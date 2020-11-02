Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  # ↪︎このルーティングはユーザー情報の編集へ繋がる
end
