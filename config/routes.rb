Rails.application.routes.draw do
  
  resources :blogs  
  resources :projects
  resources :contacts, only: [:new, :create]

  get 'welcome/index'

  get 'welcome/contact'

  get 'about', to: 'welcome#about'

  root 'welcome#index'

end
