class ProjectsController < ApplicationController
  
  
  def index
    @projects = Project.latest_available_projects
  end
  
  
  def create 
    @new_object =  Project.create_object( current_user, params[:project])  
  end
  
  
end
