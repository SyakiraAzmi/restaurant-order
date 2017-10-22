Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers, :only => [:new, :create, :show]
  resources :orders, :only => [:new, :create, :show, :edit, :update]
  resources :waiters, :only => [:new, :create, :show]


end
