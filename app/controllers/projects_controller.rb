class ProjectsController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:show]
  
  def show
    @project = Project.find params[:id]
    if @project.is_published == false
      redirect_to root_url
      return 
    end
    
  end
  
  def index
    @projects = Project.latest_available_projects
  end
  
  
  def create 
    @new_object =  Project.create_object( current_user, params[:project])  
  end
  
  def edit_project_content
    @project = Project.find_by_id params[:project_id]
    
    add_breadcrumb "Portfolio", 'projects_url'
    set_breadcrumb_for @project, 'edit_project_content_url' + "(#{@project.id})", 
                "Manage Content"
  end
  
  def update_project_content
    @project = Project.find_by_id params[:project_id]
    puts "***239482398432 total error lengths = #{@project.errors.messages.length }"
    
    
    @project.update_object( current_user, params[:project])
    @has_no_errors  = @project.errors.messages.length == 0 
  end
  
  def manage_featured_project
    @project = Project.find_by_id params[:project_id]
    @new_picture = Picture.new 
    
    @pictures = @project.pictures.where(:is_deleted => false , :is_feature_picture => true ).order("name ASC")
    
    add_breadcrumb "Portfolio", 'projects_url'
    set_breadcrumb_for @project, 'manage_featured_project' + "(#{@project.id})", 
                "Manage Featured Picture"
  end
  
  def publish
    @project = Project.find_by_id params[:entity_switch_id]
    @project.publish
    
  end
  
  
end
