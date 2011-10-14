require 'spec_helper'

describe Comment do
  
  before do
    @post = Post.new({:user_id=>1, :title=>'Post Title', :content=>'jkds ah dsah djksh dkjs a dhsak 
      jd hsdhsadsa dsadskd sa'})
    @comment = Comment.new({:title=>'Comment1', :name=>'My Name', :email=>'email@mail.com', :content=>'This is my comment', :post_id=>@post.id})
  end
  
  it "should fail if it doesn't have a post id" do
    @comment.post_id = ''
  end
  
  it "should be associated with a post" do
    @comment.should belong_to(:post)
  end
  
  it "should have replies" do
    add_reply
    @comment.comments.should have(1).record
  end
  
  def add_reply
    @comment.comments << Comment.new({:title=>'Comment on a comment', :name=>'Replier Name', :email=>'email3@email.com', :content=>'This is my comment3. It is a response to comment #2', :comment_id=>@comment.id, :post_id=>@post.id})
  end
  
end