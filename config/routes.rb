Rails.application.routes.draw do
  resources :pins

  devise_for :users
  #get 'pages/home'
  root 'pages#home'

  # root 'welcome#index'

end
