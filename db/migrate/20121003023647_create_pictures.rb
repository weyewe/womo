class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string   :name
      t.integer  :project_id
      t.string   :original_image_url
      t.string   :index_image_url
      t.string   :dashboard_image_url 
      
      t.string  :assembly_url
      t.boolean :is_resizing_completed, :default => false
      
      t.integer  :width
      t.integer  :height 
       
      
      t.boolean  :is_deleted,                 :default => false
      t.boolean  :is_main_picture ,     :default => false 

      t.timestamps
    end
  end
end
