class AddTagsTable < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :title
      t.timestamps
    end
    
    create_table :tags_posts do |t|
      t.integer :tag_id
      t.integer :post_id
    end
    
  end
  
  
end
