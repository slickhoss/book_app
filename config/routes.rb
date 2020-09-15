Rails.application.routes.draw do
  root 'books#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :books do
    resources :reviews
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
