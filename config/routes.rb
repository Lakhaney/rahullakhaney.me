Rails.application.routes.draw do
  
  resources :blogs  

  get 'welcome/index'

  get 'welcome/contact'

  root 'welcome#index'

end
