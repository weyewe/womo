class AddFriendlyId < ActiveRecord::Migration
  def up
    add_column :projects, :slug, :string  
  end

  def down
    remove_column :projects, :slug   
  end
end
