Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  get '/videos' => 'welcome#videos'
  get '/sportsbooks' => 'welcome#sportsbooks'
  get '/tutorials' => 'welcome#tuts'
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
