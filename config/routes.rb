Rails.application.routes.draw do
  resources :meetings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'static/index'
  get '/gallerij', to: 'galleries#index'
  get '/uitslagen', to: 'statistics#index'
  get '/kalender', to: 'static#calendar'
  get '/allgames', to: 'games#list'
  resources :games, :only => [:show] do
    resources :messages
  end

  mount ActionCable.server => '/cable'

  root 'static#index'

  namespace :admin do
    resources :players
    resources :galleries
    resources :games
    resources :meetings
    resources :attachments
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    get '/', to: 'admin#dashboard'
  end
end
