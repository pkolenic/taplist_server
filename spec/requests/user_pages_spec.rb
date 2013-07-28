require 'spec_helper'

describe "User pages" do

  subject { page }

  shared_examples_for "all user pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end
  
  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    let(:heading)    { user.full_name }
    let(:page_title) { user.full_name }
    before { visit user_path(user) }

    it_should_behave_like "all user pages"
  end

  describe "signup page" do
    let(:heading)    { 'Sign up' }
    let(:page_title) { 'Sign up' }
    before { visit signup_path }

    it_should_behave_like "all user pages"
  end
  
  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end

      describe "after submission" do
        let(:page_title)  { 'Sign up'}
        let(:heading)     { 'Sign up'}
        before { click_button submit }

        it_should_behave_like "all user pages"
        it { should have_content('error') }
      end
    end

    describe "with valid information" do
      before do
        fill_in "First name",   with: "Example"
        fill_in "Last name",    with: "User"
        fill_in "Phone number", with: "2085555555"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end

      describe "after saving the user" do
        before { click_button submit }
        let(:user) { User.find_by(email: 'user@example.com') }

        it { should have_title(user.full_name) }
        it { should have_selector('div.alert.alert-success', text: 'Welcome') }
      end      
    end
  end
end