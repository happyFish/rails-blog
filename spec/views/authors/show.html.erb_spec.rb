require 'spec_helper'

describe "authors/show.html.erb" do
  before(:each) do
    @author = assign(:author, stub_model(Author,
      :name => "Name",
      :email => "Email",
      :role => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
