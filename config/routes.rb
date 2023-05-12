Rails.application.routes.draw do
  resources :gossip do
    resources :comment
  end
  resources :gossip
  resources :user
  resources :welcome
  resources :city
  resources :comment
  resources :session, only: [:new, :create, :destroy]
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'
  get 'welcome/:user_name', to: 'welcome#show'
  root 'gossip#index'

end


