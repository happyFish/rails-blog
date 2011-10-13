class Comment < ActiveRecord::Base
  belongs_to :post
  has_many :comments
  
  validates_presence_of :post_id, :name, :email, :content
  
end
