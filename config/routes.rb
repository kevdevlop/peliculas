Rails.application.routes.draw do
#  get 'peliculas/index'
  root 'peliculas#index'
  resources :peliculas
#  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
