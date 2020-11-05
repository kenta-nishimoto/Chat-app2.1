Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  # ↪︎このルーティングはユーザー情報の編集へ繋がる
  resources :rooms, only: [:new, :create] do
  # ↪︎ルームの新規作成のためのルーティング
   resources :messages, only: [:index, :create]
  #  ↪︎どのルームで生成されたメッセージか把握しておきたいのでルームのネストをさせている
  end
end
