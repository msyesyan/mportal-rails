Mportal::Application.routes.draw do
  
  devise_for :users

  root :to => 'channels#index'
  
  resources :channels 
  resources :categories

end
