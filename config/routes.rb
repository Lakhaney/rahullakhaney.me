Rails.application.routes.draw do
    
  get 'welcome/index'

  get 'welcome/contact'

  root 'welcome#index'

end
