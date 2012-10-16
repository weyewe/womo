class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  
  layout :layout_by_resource
  def layout_by_resource
    if devise_controller? && resource_name == :user && action_name == 'new'
      "devise"
    elsif ( params[:controller] == 'home' && params[:action] == 'index'  ) or 
          ( params[:controller]== 'projects' && params[:action] == 'show'  ) 
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
  
  
  def ensure_project_membership
    @project_membership = @project.get_project_membership_for( current_user )
    
    if @project_membership.nil?
      redirect_to select_project_for_collaboration_url
      return
    end
  end
  
  def set_breadcrumb_for object, destination_path, opening_words
    add_breadcrumb "#{opening_words}", destination_path
  end
  
  
  protected 
  
  def add_breadcrumb name, url = ''
    @breadcrumbs ||= []
    url = eval(url) if url =~ /_path|_url|@/
    @breadcrumbs << [name, url]
  end

  def self.add_breadcrumb name, url, options = {}
    before_filter options do |controller|
      controller.send(:add_breadcrumb, name, url)
    end
  end
  
  
end
