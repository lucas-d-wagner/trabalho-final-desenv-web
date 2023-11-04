Rails.application.routes.draw do
  resources :users, :employees, :roles, :departments, :loans, :installments
  root   'home#index'
  get    'home'      => 'home#index'
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
  put    'pay_installment' => 'installments#pay_installment'
  
  resources :installments do
    post 'generate_installments', on: :collection
  end

end
