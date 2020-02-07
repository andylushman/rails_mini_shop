Rails.application.routes.draw do
  resources :items, only: [:index, :show, :destroy]
  resources :merchants do
    resources :items, only: [:index, :new, :create, :edit]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
