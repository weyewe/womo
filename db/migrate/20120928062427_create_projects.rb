class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description 
      
      t.integer :user_id 
      
      
      t.boolean :is_deleted, :default => false 
      t.boolean :is_published, :default => false 
      t.datetime :first_publication_datetime 
      t.boolean :has_ever_been_published, :default => false 
      
      

      t.timestamps
    end
  end
end
