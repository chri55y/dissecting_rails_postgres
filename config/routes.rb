Rails.application.routes.draw do

  resources :portfolios

  # TO DO: customize so that these 'pages/' isn't repeated throughout
  # get 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  resources :blogs

  root to: 'pages#home'

end
