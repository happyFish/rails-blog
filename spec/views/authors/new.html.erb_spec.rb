require 'spec_helper'

describe "authors/new.html.erb" do
  before(:each) do
    assign(:author, stub_model(Author,
      :name => "MyString",
      :email => "MyString",
      :role => 1
    ).as_new_record)
  end

  it "renders new author form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => authors_path, :method => "post" do
      assert_select "input#author_name", :name => "author[name]"
      assert_select "input#author_email", :name => "author[email]"
      assert_select "input#author_role", :name => "author[role]"
    end
  end
end
