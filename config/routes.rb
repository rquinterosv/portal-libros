Rails.application.routes.draw do
  devise_for :users
  resources :books
  get 'my_books', to: 'books#my_books'
  get 'resevar/:id', to: 'books#reservar', as: 'book_reservar'
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
