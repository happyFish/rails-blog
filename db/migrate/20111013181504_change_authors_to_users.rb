class ChangeAuthorsToUsers < ActiveRecord::Migration
  def up
    drop_table :authors
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :role

      t.timestamps
    end
    remove_column :posts, :author_id
    add_column :posts, :user_id, :integer
    
    add_column :comments, :user_id, :integer
  end

  def down
    drop_table :users
    add_table :authors do |t|
      t.string :name
      t.string :email
      t.integer :role

      t.timestamps
    end
    
    remove_column :comments, :user_id
    remove_column :posts, :user_id
    
    add_column :posts, :author_id, :integer
    
  end
end
