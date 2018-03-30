Rails.application.routes.draw do

  get 'home_dashboard/index'

  get  'user/new',  to: 'users#new'
  post 'user/add_user',  to: 'users#add_user'

  get 'contact/index'

  get 'app_status/index'

  resources :notices

  get 'circulars/index'

  resources :circulars

  get "/admin/new_constituency", to: "admin#new_constituency", as: "new_constituency"
  post "/admin/", to: "admin#create_constituency", as: "constituencies"
  get "/admin/:id/edit_constituency", to: "admin#edit_constituency", as: "edit_constituency"

  get "/admin/:id/show_constituency", to: "admin#show_constituency", as: "show_constituency"

  patch "/admin/:id/", to: "admin#update_constituency", as: "constituency"
  delete "/admin/:id", to: "admin#destroy_constituency", as: "constituencies1"

  get "/admin/:id/edit_empl_usr", to: "admin#edit_empl_usr", as: "edit_empl_usr"
  patch "/admin/:id/update_empl_usr", to: "admin#update_empl_usr", as: "update_empl_usr"

  get 'admin/index'

  get 'welcome/index'

  get 'empl/accepted',to: "empl#accepted", as: "empl_accepted"
  get 'empl/rejected',to: "empl#rejected", as: "empl_rejected"
  get 'empl/all',to: "empl#all", as: "empl_all"
  resources :empl

  resources :applies
  get "applies/:id/appl", to: "applies#appl", as: "appl"
  root 'welcome#index'
  devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end


  get 'faqs/index'

  get 'welcome/delete', to: "welcome#delete" , as:"sign_out_path"

  resources :stats, only: [:index]

  resources :questions do
    resources :answers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
