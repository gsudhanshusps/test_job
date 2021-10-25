Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  root 'lawyers#index'
  resources :users, only: [:new, :create]

  get '/users' => redirect('/users/new')

end
