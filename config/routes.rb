Rails.application.routes.draw do
  
  root to: 'homes#top'
  
  resources :books #7つのアクションを定義
  resources :homes #7つのアクションを定義

end
