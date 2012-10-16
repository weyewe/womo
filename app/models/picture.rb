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
      
      self.feature_image_thumbnail_url = params['results']['resize_featured_thumbnail']['0']['url']   
      self.feature_image_thumbnail_size = params['results']['resize_featured_thumbnail']['0']['size']   
      self.is_feature_picture = true         
    end
    
    
    puts "Extracting name is done\n"*10
    self.name                =  params['results'][':original']['0']['name']  
    
    if not self.assembly_url.nil?
      self.is_resizing_completed = true
    end
    
    
    
    self.save
  end
  
  def mark_as_deleted
    self.is_deleted = true 
    self.save 
  end
  
  def switch_teaser(value)
    if value.to_i == TRUE_CHECK
      self.other_current_main_pictures.each do |pic|
        pic.is_main_picture = false
        pic.save
      end
      self.is_main_picture = true 
      self.save 
    else
      self.is_main_picture = false
      self.save
    end
  end
  
  def other_current_main_pictures
    current_pic = self 
    self.project.current_main_pictures.where{ id.not_eq current_pic.id }
  end
  
  
  def other_featured_pictures
    current_pic = self 
    self.project.current_displayed_featured_pictures.where{ id.not_eq current_pic.id }
  end
  
  def switch_featured(  value )
    if value.to_i == TRUE_CHECK
      self.other_featured_pictures.each do |pic|
        pic.is_feature_picture_displayed = false
        pic.save
      end
      self.is_feature_picture_displayed = true 
      self.save 
    else
      self.is_feature_picture_displayed = false
      self.save
    end
  end
  
  
  
end
