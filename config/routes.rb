Womo::Application.routes.draw do
  devise_for :users

  root :to => 'home#index'
  match 'dashboard' => "home#dashboard" , :as => :dashboard
  
  resources :projects  do 
    resources :pictures 
  end
  resources :bookmarks 
  
  # uploading assembly_url to project 
  match 'create_picture_from_assembly/:project_id' => "pictures#create_picture_from_assembly", :as => :create_picture_from_assembly, :method => :post
  match 'transloadit_status_for_picture' => "pictures#transloadit_status_for_picture", :as => :transloadit_status_for_picture, :method => :post
  match 'new_uploaded_picture_display/:picture_id' => "pictures#new_uploaded_picture_display", :as => :new_uploaded_picture_display
end
