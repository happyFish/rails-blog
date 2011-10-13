class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :post_id
      t.string :title
      t.string :file_name
      t.integer :file_size
      t.string :file_path
      t.string :file_type

      t.timestamps
    end
  end
end
