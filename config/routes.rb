Rails.application.routes.draw do
  get 'chapters/index'

  devise_for :users, controllers: {
   sessions: 'users/sessions'
 }


  root to: 'static_pages#index'
  get '/faq',                  to: 'static_pages#faq'
  get '/store',                to: 'static_pages#store'
  get '/chapters/',            to: 'chapters#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
