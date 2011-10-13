class ChangeAuthorToAuthorIdInPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :author
    add_column :posts, :author_id, :integer
  end
end
