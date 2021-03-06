Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_up: 'register', sign_out: 'logout'} 

root to: 'pages#home'  

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
	end

resources :portfolios, except: [:show]
 get 'portfolio/:id', to: 'portfolio#show', as: 'show_portfolio'
 get 'angular-items', to: 'portfolios#angular'

end
