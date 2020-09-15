Rails.application.routes.draw do
  root 'books#index' 

  get 'about' => 'pages#about'

  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
