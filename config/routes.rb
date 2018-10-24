Rails.application.routes.draw do
  resources :reports
  resources :spendings
  resources :buckets
  resources :categories
  resources :chapter_actions
  get 'chapters/index'

  devise_for :users, controllers: {
   sessions: 'users/sessions',
   registrations: 'users/registrations'
 }




  root to: 'chapter_actions#index'

  get '/faq',                  to: 'static_pages#faq'
  get '/store',                to: 'static_pages#store'
  get '/control-panel',        to: 'static_pages#control_panel'
  get '/chapters/',            to: 'chapters#index'
  get '/chapters/:slug',       to: 'chapters#show'
  get '/leaderboard',          to: 'chapters#leaderboard'
  get '/stats',                to: 'chapters#stats'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
