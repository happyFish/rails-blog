class ChangeTagsPostsToPostsTags < ActiveRecord::Migration
  def up
    drop_table :tags_posts
     create_table :posts_tags, :id => false do |t|
       t.integer :post_id
       t.integer :tag_id 
    end
  end

  def down
    drop_table :posts_tags
     create_table :tags_posts do |t|
       t.integer :post_id
       t.integer :tag_id 
    end
  end
end
