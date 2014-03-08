Woodpecker::Application.routes.draw do
  resources :tasks

  root :to => 'static_pages#home'

  devise_for :users
end
