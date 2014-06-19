Groupme::Application.routes.draw do
  root :to => 'groups#index'
  resources :groups do
  	member do
  		post :join
  		post :quit
  	end
  	resources :posts
  end
  namespace :account do
  	resources :groups
  	resources :posts
  end
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  #root :to => 'high_voltage/pages#show', :id => 'welcome'
end
