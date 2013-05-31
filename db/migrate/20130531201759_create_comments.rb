class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.text :comment
      t.integer :app_id

      t.timestamps
    end
  end
end
