Womo::Application.routes.draw do
  devise_for :users

  root :to => 'home#index'
  match 'dashboard' => "home#dashboard" , :as => :dashboard
  
  resources :projects  do 
    resources :pictures 
  end
  resources :bookmarks 
  
  # uploading assembly_url to project  # if the processing is done in the server. 
  match 'create_picture_from_assembly/:project_id' => "pictures#create_picture_from_assembly", :as => :create_picture_from_assembly, :method => :post
  match 'transloadit_status_for_picture' => "pictures#transloadit_status_for_picture", :as => :transloadit_status_for_picture, :method => :post
  match 'new_uploaded_picture_display/:picture_id' => "pictures#new_uploaded_picture_display", :as => :new_uploaded_picture_display
  
  
  
  # edit project content: title, teaser, story/description, :featured status , upload featured image
  match 'edit_project_content/:project_id' => "projects#edit_project_content", :as => :edit_project_content
  match 'update_project_content/:project_id' => "projects#update_project_content", :as => :update_project_content, :method => :post 
  
  # manage featured project ( appears in the front page )
  match 'manage_featured_project/:project_id' => "projects#manage_featured_project", :as => :manage_featured_project
  match 'create_featured_picture/:project_id' => 'pictures#create_featured_picture',  :as => :create_featured_picture, :method => :post 
  
  # picture 
  match 'destroy_picture' => 'pictures#destroy_picture', :as => :destroy_picture, :method => :post 
  match 'switch_teaser' => "pictures#switch_teaser", :as => :switch_teaser, :method => :post 
  
  match 'switch_featured' => "pictures#switch_featured", :as => :switch_featured, :method => :post 
  
  match 'publish' => 'projects#publish', :as => :publish, :method => :post 
end
