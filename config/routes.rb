Rails.application.routes.draw do

  get 'top' => 'homes#top'
  get 'books' => 'books#index', as: 'books'
  post 'books' => 'books#create'
  
end
