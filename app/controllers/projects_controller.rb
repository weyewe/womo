class ProjectsController < ApplicationController
  
  
  def index
    @projects = Project.latest_available_projects
  end
  
  
  def create 
    @new_object =  Project.create_object( current_user, params[:project])  
  end
  
  def edit_project_content
    @project = Project.find_by_id params[:project_id]
  end
  
  def update_project_content
  end
  
  def manage_featured_project
    @project = Project.find_by_id params[:project_id]
    @new_picture = Picture.new 
  end
  
  
end
