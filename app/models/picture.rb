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
    
    
    
    # transloadit_params = ActiveSupport::HashWithIndifferentAccess.new(
    #           ActiveSupport::JSON.decode content
    #         )
    #         
    #     while transloadit_params[:ok] != "ASSEMBLY_COMPLETED"
    #       sleep 2
    #       puts "in the loop"
    #       content = open(self.assembly_url).read
    #       transloadit_params = ActiveSupport::HashWithIndifferentAccess.new(
    #             ActiveSupport::JSON.decode content
    #           )
    #     end
    
    self.parse_transloadit( content , FALSE_CHECK)
    
    
      
  end
  
  def parse_transloadit( params , is_featured_check) 
   
    self.original_image_url  = params['results'][':original']['0']['url'] 
    self.index_image_url     = params['results']['resize_index']['0']['url']    
    self.dashboard_image_url  =  params['results']['resize_dashboard']['0']['url']   
    puts "THe url is done\n"*10 
    
    self.original_image_size = params['results'][':original']['0']['size']  
    self.index_image_size    = params['results']['resize_index']['0']['size']        
    self.dashboard_image_size = params['results']['resize_dashboard']['0']['size']       
    puts "THe image size is done\n"*10
    
    if is_featured_check == TRUE_CHECK
      self.feature_image_url = params['results']['resize_featured']['0']['url']   
      self.feature_image_size = params['results']['resize_featured']['0']['size']       
      self.is_feature_picture = true         
    end
    
    
    puts "Extracting name is done\n"*10
    self.name                =  params['results'][':original']['0']['name']  
    
    if not self.assembly_url.nil?
      self.is_resizing_completed = true
    end
    
    
    
    self.save
  end
  
  
end
