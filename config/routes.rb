Rails.application.routes.draw do

  get "/admin/new_constituency", to: "admin#new_constituency", as: "new_constituency"
  post "/admin/", to: "admin#create_constituency", as: "constituencies"
  get "/admin/:id/edit_constituency", to: "admin#edit_constituency", as: "edit_constituency"
  patch "/admin/:id/", to: "admin#update_constituency", as: "constituency"
  delete "/admin/:id", to: "admin#destroy_constituency", as: "constituencies1"

  get 'admin/index'

  get 'welcome/index'

  resources :empl

  resources :applies
  root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
