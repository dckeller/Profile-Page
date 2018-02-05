Rails.application.routes.draw do
  get 'contact/new'
  
  resources :contacts, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
