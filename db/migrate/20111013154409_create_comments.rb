class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
