require 'spec_helper'

describe Post do
  
  before do
    @post = Post.new({:user_id => 1, :title=>'Title', :content=>'This is the content' }) 
  end
    
  it "Should fail if title, user, or content are empty, and succeed if not" do
    @post.should be_valid
    @post.user_id = nil
    @post.should_not be_valid
  end
  
  it "Saves the post and makes sure it exists" do
    @post.save
    Post.should have(1).record
  end
  
  it "should belong to user" do
    @post.should belong_to(:user)
  end
  
  it "should add tags and find them" do
    add_tags
    @post.tags.first().title.should == 'A perfectly good tag'    
  end
  
  it "should be associated with a bunch of tags" do
    @post.should have_many(:tags)
  end
  
  it "should upload multiple files as attachments" do
    upload_attachments
    @post.save
    @post.attachments.first().file_name.should == 'Something.png'
    @post.attachments.last().file_name.should == 'Something3.txt'
  end
  
  def add_tags
    @post.tags << Tag.new({:title=>'A perfectly good tag'})
    @post.tags << Tag.new({:title=>'This one, kinda sucks'})
  end
  
  def upload_attachments
    @post.attachments << Attachment.new({:file_name=>'Something.png', :file_type=>'image/png', :file_size=>25, :file_path=>'public/attachments/Something.png'})
    @post.attachments << Attachment.new({:file_name=>'Something2.jpg', :file_type=>'image/jpg', :file_size=>25, :file_path=>'public/attachments/Something2.jpg'})
    @post.attachments << Attachment.new({:file_name=>'Something2.zip', :file_type=>'application/zip', :file_size=>25, :file_path=>'public/attachments/Something2.zip'})
    @post.attachments << Attachment.new({:file_name=>'Something3.txt', :file_type=>'application/text', :file_size=>25, :file_path=>'public/attachments/Something3.txt'})
  end
    
end