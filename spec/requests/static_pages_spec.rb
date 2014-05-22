require 'spec_helper'
describe "User pages" do
	subject {page}
	
	describe "profile page" do
		let(:user) {FactoryGirl.create(:user)}
		before {visit user_path(user)}
		it {should have_selector('h1', text: user.name)}
		it {should have_selector('title', text: user.name)}
	end

describe "Static pages" do
 subject { page }

	  describe "Home page" do
	    before { visit root_path } 

	    it { should have_selector('h1', text: 'Welcome to the sample App') }
	  end
end
end