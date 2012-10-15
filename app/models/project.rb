class Project < ActiveRecord::Base
  attr_accessible :title, :description
  has_many :pictures
  
  validates_presence_of :title 
  belongs_to :category
  
=begin
  Object Creation
=end
  def self.create_object( current_user, object_params )  
    new_object = self.new object_params 
    if not current_user.has_role?(:vendor) 
      return new_object 
    end
    new_object.user_id = current_user.id 
    new_object.save 

    return new_object
  end
  
  
  
  def Project.latest_available_projects
    Project.where(:is_deleted => false ).order("created_at DESC")
  end
  
  def main_picture   # the teaser picture 
    main_picture = self.pictures.where(:is_deleted => false, :is_feature_picture => false , :is_main_picture => true ).first
    if main_picture.nil?
      main_picture=   self.pictures.where(:is_deleted => false , :is_feature_picture => false ).first
    end 
    
    return main_picture
  end
  
  
  
  
=begin
  Article management
=end
  def current_main_pictures # teaser 
    self.pictures.where(:is_deleted => false,:is_feature_picture => false, :is_main_picture => true)
  end
  
  def content_pictures
    self.pictures.where(:is_deleted => false,:is_feature_picture => false )
  end
  
  def featured_pictures
    self.pictures.where(:is_deleted => false,:is_feature_picture => true )
  end
  
end
