Rails.application.routes.draw do

  resources :portfolios, except: [:show]
  # we want to customize to use singular noun for show action (makes more sense grammatically)
  # except breaks portfolio_ helper prefix, so we have to add as: 'portfolio_show'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # Pages
  get 'about',    to: 'pages#about'
  get 'about-me', to: 'pages#about'
  get 'contact',  to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'

end
