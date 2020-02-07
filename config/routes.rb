Rails.application.routes.draw do
  resources :items, only: [:index, :show, :destroy]
  resources :merchants do
    resources :items, only: [:index, :new, :create, :edit, :update]
  end
end
