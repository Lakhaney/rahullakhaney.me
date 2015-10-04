Rails.application.routes.draw do
  
  resources :blogs  
  resources :projects

  get 'welcome/index'

  get 'welcome/contact'

  root 'welcome#index'

end
