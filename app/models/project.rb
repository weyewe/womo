class Project < ActiveRecord::Base
  attr_accessible :title, :description
  has_many :pictures
  
  validates_presence_of :title 
  
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
  
  def main_picture  
    main_picture = self.pictures.where(:is_deleted => false, :is_main_picture => true ).first
    if main_picture.nil?
      main_picture=   self.pictures.where(:is_deleted => false ).first
    end 
    
    return main_picture
  end
  
  
end
