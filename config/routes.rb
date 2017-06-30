Rails.application.routes.draw do


  get '/user/:uid', to: 'home#user', as: 'user'
  post '/report', to: 'home#report'
  get '/search', to: 'home#search', as: 'search'
  root 'home#index'
end
