require 'spec_helper'

describe "PasswordResets" do
  it "emails user when requesting password reset" do
    user = Factory(:user)
    visit users_login_path
    click_link "password"
    fill_in "email", :with=>user.email
    click_button "Reset Password"
    page.should have_content('email sent')
    last_email.to.should include(user.email)
  end
end
