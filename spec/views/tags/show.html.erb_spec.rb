require 'spec_helper'

describe "tags/show.html.erb" do
  before(:each) do
    @tag = assign(:tag, stub_model(Tag))
  end

  it "renders attributes in <p>" do
    render
  end
end
