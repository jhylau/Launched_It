class AddSchemaConstraints < ActiveRecord::Migration
  def up
    change_column :apps, :codebase_url, :string, :null => false 
    change_column :apps, :description, :text, :null => false 
    change_column :apps, :email, :string, :null => false 
    change_column :apps, :title, :string, :null => false 
    change_column :apps, :url, :string, :null => false
    change_column :comments, :comment, :text, :null => false
    change_column :comments, :email, :string, :null => false
    change_column :comments, :first_name, :string, :null => false
    change_column :comments, :last_name, :string, :null => false 
  end

  def down
    change_column :apps, :codebase_url, :string 
    change_column :apps, :description, :text 
    change_column :apps, :email, :string 
    change_column :apps, :title, :string 
    change_column :apps, :url, :string
    change_column :comments, :comment, :text
    change_column :comments, :email, :string
    change_column :comments, :first_name, :string
    change_column :comments, :last_name, :string 
  end
end
