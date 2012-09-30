class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  
  layout :layout_by_resource
  def layout_by_resource
    if devise_controller? && resource_name == :user && action_name == 'new'
      "devise"
    else
      "application"
    end
  end
  
  
  def deduce_after_sign_in_url 
    
    if current_user.has_role?(:admin )
      return dashboard_url  
    end
    
    if current_user.has_role?(:vendor )
      return projects_url   
    end
    
    if current_user.has_role?(:basic )
      return bookmarks_url   
    end 
    
    return destroy_user_session_url
  end
  
  def after_sign_in_path_for(resource)
    return deduce_after_sign_in_url 
  end
  
  
end
