Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'static/index'
  get '/gallerij', to: 'galleries#index'
  get '/uitslagen', to: 'statistics#index'

  root 'static#index'

  namespace :admin do
    resources :players
    resources :galleries
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    get '/', to: 'admin#dashboard'
  end
end
