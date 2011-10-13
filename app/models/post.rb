class Post < ActiveRecord::Base
  validates_presence_of :user_id, :title, :content
  
  belongs_to :user
  has_and_belongs_to_many :tags
  has_many :attachments
  has_many :comments
  
  
  def upload_attachments uploads
    return if uploads.nil?
    require 'file_handler'
    
    uploads.each do |uploaded_file|
      key = uploaded_file.keys[0]
      upload = FileHandler.upload(uploaded_file[key], 'public/assets/attachments', 'attachments')
      self.attachments << Attachment.new(upload)
    end
  end
  
  def add_tags(tags)
    puts tags.split(/, */)
    tags.split(/, */).each do |tag|
      self.tags << Tag.find_or_create_by_title(tag)
    end  
  end
  
end
