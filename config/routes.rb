Womo::Application.routes.draw do
  devise_for :users

  root :to => 'home#index'
  match 'dashboard' => "home#dashboard" , :as => :dashboard
  
  resources :projects 
  resources :bookmarks 
end
