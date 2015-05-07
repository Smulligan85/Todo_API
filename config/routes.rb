Rails.application.routes.draw do
  get 'user/new'

  root 'welcome#index'

  get 'welcome/about'

end
