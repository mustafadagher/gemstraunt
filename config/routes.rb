Rails.application.routes.draw do
  resources :orders, only: [ :index ] #/orders
  resources :tables do
    resources :orders, only: [ :create ] do #/tables/:id/orders
      post :add, on: :member
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
