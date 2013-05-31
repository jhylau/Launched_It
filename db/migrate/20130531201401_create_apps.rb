class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :title
      t.string :url
      t.string :codebase_url
      t.text :description
      t.string :email

      t.timestamps
    end
  end
end
