Rails.application.routes.draw do
  
  resources :users do
    resources :lists, except: [:index]
  end

  namespace :api, defaults: { format: :json } do
     resources :users
  end


  get 'user/new'

  root 'welcome#index'

  get 'welcome/about'

end
