Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  resources :cocktails, only: [:show, :index]
  resources :cocktails, only: [:show, :index, :new, :create] do
    member do
      resources :doses, only: :create
      # post '/cocktails/:id/doses', to: 'doses#create'
    end
  end

  root to: 'cocktails#index'

end
