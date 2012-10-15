class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      
      t.string   :name
      t.integer  :project_id
      
      t.string   :original_image_url
      
      t.string   :index_image_url  # big size = 800px # this is for the blog (public consumption)
      t.string   :dashboard_image_url  # small size = 600px  # this is for the internal content creation
      t.string   :feature_image_url  # 1600px width
      
      
      t.integer :original_image_size
      t.integer :index_image_size
      t.integer :dashboard_image_size 
      t.string   :feature_image_size
      
      t.string  :assembly_url
      t.boolean :is_resizing_completed, :default => false
      
      t.integer  :width
      t.integer  :height 
       
      
      t.boolean  :is_deleted,                 :default => false
      t.boolean  :is_main_picture ,     :default => false  # teaser pic 
      t.boolean  :is_feature_picture, :default => false 
      
      
      t.boolean :is_feature_picture_displayed, :default => false 

      t.timestamps
    end
  end
end
