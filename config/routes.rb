Rails.application.routes.draw do
  resources :portfolios
  # TO DO: customize so that these 'pages/' isn't repeated throughout
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
