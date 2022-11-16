Rails.application.routes.draw do

  namespace :api do
    resources :home_banners, only: [:index]
    resources :users, only: [:create, :destroy]
    resources :user_profiles
    resources :events
    resources :categories, only: [:index, :show]
    resources :communities, only: [:index, :create, :show, :destroy]
    resources :abouts, only: [:index, :create, :show, :destroy]
    resources :login_slides
  end

  post '/login', to: 'auth#create'
  post '/auto_login', to: 'auth#auto_login'
  get '/logged_in', to: 'application#logged_in?'

end
