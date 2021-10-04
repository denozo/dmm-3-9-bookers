Rails.application.routes.draw do
  
  root to: 'homes#top'
  
  resources :books
  
  get 'books/:id/show' => 'books#show', as: 'show_book'
  patch 'books/:id' => 'books#update' #asを設定した為、routingエラーが出ていた。
  
end
