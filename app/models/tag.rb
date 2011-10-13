class Tag < ActiveRecord::Base
  # has_many :tags_posts
  has_and_belongs_to_many :posts #, :through=>:tags_posts
end
