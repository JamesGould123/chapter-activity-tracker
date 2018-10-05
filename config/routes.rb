Rails.application.routes.draw do
  resources :chapter_actions
  get 'chapters/index'

  devise_for :users, controllers: {
   sessions: 'users/sessions'
 }


  root to: 'chapter_actions#index'
  get '/faq',                  to: 'static_pages#faq'
  get '/store',                to: 'static_pages#store'
  get '/chapters/',            to: 'chapters#index'
  get '/chapters/:id',         to: 'chapters#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
