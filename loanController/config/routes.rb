Rails.application.routes.draw do
  resources :users, :employees, :roles, :departments
  get    'home'      => 'home#index'
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
  root 'home#index'
end
