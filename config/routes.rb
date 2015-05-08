Rails.application.routes.draw do
  
  namespace :api, defaults: { format: :json } do
    resources :users do
      resources :lists, except: [:index]
    end
  end

  resources :lists, only: [] do
    resources :items, only: [:create]
  end

  resources :items, only: [:destroy]


  get 'user/new'

  root 'welcome#index'

  get 'welcome/about'

end
