Rails.application.routes.draw do
  get 'admins/:id', to: 'admins#update'
  get 'admins', to: 'admins#index'
  put 'admins/:id', to: 'admins#update', as: 'update_admin'
  devise_for :users
  get 'histories', to: 'histories#user_histories', as: 'user_histories'
  resources :histories

  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
