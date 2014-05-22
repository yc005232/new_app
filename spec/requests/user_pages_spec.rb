require 'spec_helper'

visit signup_path 
expect {click-button "Create my account"}.not_to change(User,:count)

visit signup_path
fill_in "Name", with:"Example User"
fill_in "Email", with:"user@example.com"
fill_in "Password", with:"foobar"
fill_in "Confirmation", with:"foobar"
click_button "Create my account"
expect do
	click_button "Create my account"
end.to change(User, :count).by(1)
