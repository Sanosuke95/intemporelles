Rails.application.routes.draw do
  resources :finishings
  resources :materials
  resources :colors
  resources :articles
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root "pages#home"
end
