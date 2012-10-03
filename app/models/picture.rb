class Picture < ActiveRecord::Base
  attr_accessible :assembly_url, :is_resizing_completed, :project_id
  belongs_to :project
  
  def Picture.create_from_assembly_url(assembly_url, project)
    pic = Picture.create(:assembly_url => assembly_url, :is_resizing_completed => false , :project_id => project.id)
    
    pic.delay.extract_from_assembly_url
    return pic
  end
  
  def Picture.assembled_pic_id_from( pic_id_list ) 
    Picture.find(:all, :conditions => {
      :id => pic_id_list, 
      :is_resizing_completed => true 
    }).map{|x| x.id }
  end
  
  
  def extract_from_assembly_url
    content = open(self.assembly_url).read
    # json = JSON.parse(content)
    
    
    
    transloadit_params = ActiveSupport::HashWithIndifferentAccess.new(
          ActiveSupport::JSON.decode content
        )
        
    while transloadit_params[:ok] != "ASSEMBLY_COMPLETED"
      sleep 2
      puts "in the loop"
      content = open(self.assembly_url).read
      transloadit_params = ActiveSupport::HashWithIndifferentAccess.new(
            ActiveSupport::JSON.decode content
          )
    end

    self.original_image_url  = transloadit_params[:results][':original'].first[:url]
    self.index_image_url     = transloadit_params[:results][:resize_index].first[:url]   
    self.dashboard_image_url  = transloadit_params[:results][:resize_dashboard].first[:url]  
    
    self.original_image_size = transloadit_params[:results][':original'].first[:size]
    self.index_image_size    = transloadit_params[:results][:resize_index].first[:size]         
    self.dashboard_image_size = transloadit_params[:results][:resize_dashboard].first[:size]     
    
    self.name                = transloadit_params[:results][':original'].first[:name] 
    self.is_resizing_completed        = true
     
    
    self.save
      
  end
  
  
end
