class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title , use: :slugged
  
  attr_accessible :title, :teaser, :description
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
  
  def update_object( current_user, object_params )    
    self.assign_attributes( object_params ) 
    if not current_user.has_role?(:vendor) 
      return self 
    end
     
    if self.title.nil? or self.title.length == 0 
      self.errors.add(:title , "The title can't be empty" ) 
      return self 
    end
    self.save 
    
    

    return self
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
    self.pictures.where(:is_deleted => false,:is_feature_picture => false, :is_main_picture => true).order("name ASC")
  end
  
  def content_pictures
    self.pictures.where(:is_deleted => false,:is_feature_picture => false ).order("name ASC")
  end
  
  def featured_pictures
    self.pictures.where(:is_deleted => false,:is_feature_picture => true , :is_feature_picture_displayed => false ).order("name ASC")
  end
  
  def current_displayed_featured_pictures
    self.pictures.where(:is_deleted => false,:is_feature_picture => true, :is_feature_picture_displayed =>true  ).order("name ASC")
  end


  def publish 
    if self.is_published == false  
      if self.has_ever_been_published == false
        self.has_ever_been_published = true 
        self.first_publication_datetime = DateTime.now  
      end
      self.is_published = true 
    else
      self.is_published = false 
    end
    
    self.save 
    
  end
  
end
