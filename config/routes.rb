Rails.application.routes.draw do
  get 'instruct/index'
  get 'prof/index'
  get 'welcome/index'
  
  resources :survey, :prof, :instruct
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
