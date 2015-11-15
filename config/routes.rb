Rails.application.routes.draw do
  resources :sejours
  
  devise_for :users
  
  root 'home#index'
  
  get 'about' => 'home#about'

  get 'contact' => 'home#contact'
  
  
end
