Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
  #resourcesはテーブル毎に設定できるので、一つだけとは限らないので注意
end
