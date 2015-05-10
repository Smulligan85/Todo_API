Rails.application.routes.draw do
  
  namespace :api, defaults: { format: :json } do
    resources :users do
      resources :lists, except: [:index]
    end
    resources :lists, only: [] do
      resources :items
    end
  end

  resources :lists, only: [] do
    resources :items
  end

  # resources :items, only: [:update, :destroy]


  # get 'user/new'

  root 'welcome#index'

  get 'welcome/about'

end
