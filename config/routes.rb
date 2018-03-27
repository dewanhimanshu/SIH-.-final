Rails.application.routes.draw do

  get 'app_status/index'

  get 'notices/index'

  get 'circulars/index'

  get "/admin/new_constituency", to: "admin#new_constituency", as: "new_constituency"
  post "/admin/", to: "admin#create_constituency", as: "constituencies"
  get "/admin/:id/edit_constituency", to: "admin#edit_constituency", as: "edit_constituency"

  get "/admin/:id/show_constituency", to: "admin#show_constituency", as: "show_constituency"

  patch "/admin/:id/", to: "admin#update_constituency", as: "constituency"
  delete "/admin/:id", to: "admin#destroy_constituency", as: "constituencies1"

  get 'admin/index'

  get 'welcome/index'

  resources :empl

  resources :applies
  get "applies/:id/appl", to: "applies#appl", as: "appl"
  root 'welcome#index'
  devise_for :users

  get 'faqs/index'

  resources :stats, only: [:index]

  resources :questions do
    resources :answers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
