class PicturesController < ApplicationController
  def new
    @project = Project.find_by_id params[:project_id]
    @new_picture = @project.pictures.new 
    @pictures = @project.pictures.where(:is_deleted => false , :is_feature_picture => false ).order("name ASC")
  end
  
  def create_picture_from_assembly
    @project = Project.find_by_id( params[:project_id] )
    assembly_url = params[:assembly_url]
    # ensure_project_membership
    
    @picture = Picture.create_from_assembly_url(assembly_url, @project)
    
    respond_to do |format| 
      format.js do 
        is_completed_result = 0 
        if @picture.is_resizing_completed == true
          is_completed_result= 1
        end
        render :json => {'picture_id' => @picture.id, 'is_completed' => is_completed_result}.to_json  
      end
    end
  end
  
  def transloadit_status_for_picture
    # @picture = Picture.find_by_id( params[:picture_id])
    array_of_assembled_pic_id = Picture.assembled_pic_id_from( params[:non_completed_pic_id_list].split(",").map{|x| x.to_i })
      
    
    
    respond_to do |format| 
      format.js do 
        # is_completed_result = 0 
        # if @picture.is_completed == true
        #   is_completed_result= 1
        # end
        render :json => array_of_assembled_pic_id.to_json  
      end
    end
  end
  
  
  def create
    @project = Project.find_by_id( params[:project_id])
    @picture = Picture.create 
    @picture.project_id = @project.id 
    @picture.save 
      
    @picture.parse_transloadit( params , FALSE_CHECK)
  end
  
  def create_featured_picture
    @project = Project.find_by_id( params[:project_id])
    @picture = Picture.create 
    @picture.project_id = @project.id 
    @picture.save 
     
        
    @picture.parse_transloadit( params , TRUE_CHECK)  
  end
  
end
