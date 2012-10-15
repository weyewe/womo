class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :teaser 
      t.text :description 
      
      t.boolean :is_featured_project, :default => false 
      
      t.integer :user_id 
      
      
      t.boolean :is_deleted, :default => false 
      t.boolean :is_published, :default => false 
      t.datetime :first_publication_datetime 
      t.boolean :has_ever_been_published, :default => false 
      
      t.integer :category_id 
      

      t.timestamps
    end
  end
end
