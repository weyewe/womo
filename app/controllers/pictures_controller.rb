class PicturesController < ApplicationController
  def new
    @project = Project.find_by_id params[:project_id]
    @new_picture = @project.pictures.new 
  end
end
