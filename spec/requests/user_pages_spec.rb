require 'spec_helper'

# Create a Company
company = Company.find_by(name: 'Brew Company')
if !company 
  FactoryGirl.create(:company)
end

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

   # js fails to run
    # describe "selecting a company should hide the company creation elements" do
      # before { select "Brew Company", from: "user[company_id]" }
      # it { should have_css('#company_fields.hidden') }
    # end

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

    describe "with no company selected" do
      before do
        valid_signup
      end
      
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end      
    end

    describe "with invalid new company information" do
      before do
        valid_signup
        partial_company        
      end
      
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end          
    end

    describe "with valid information" do
      before do
        valid_signup
        select "Brew Company", from: "user[company_id]"
      end
      
      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end

      describe "after saving the user" do        
        before { click_button submit }
        let(:user) { User.find_by(email: 'user@example.com') }

        it { should have_link('Sign out') }
        it { should have_title(user.full_name) }
        it { should have_success_message('Welcome') }
      end      
    end
    
    describe "with valid new company information" do
      before do
        valid_signup
        valid_company
        select "California",  from: "company[state]"
      end    

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
        
      end
      
      it "should create a company" do
        expect { click_button submit }.to change(Company, :count).by(1)
      end    
    end
    
    # js fails to run
    # describe "changing company selected" do
      # before do
        # valid_signup
        # valid_company
        # select "California",  from: "company[state]"
      # end
#       
      # describe "to a company" do
        # before do
           # select "Brew Company", from: "user[company_id]"
        # end
#         
        # it "should clear company fields" do
          # find_field('Name').value.should eq ''
          # find_field('Address').value.should eq ''
          # find_field('City').value.should eq ''
          # find_field('Zip').value.should eq ''
          # find_field('Company Email').value.should eq ''
          # find_field('State').value.should eq ''
        # end
      # end
#       
      # describe "to prompt" do
        # before { select "Select a Company", from: "user[company_id]" }
#         
        # it "should clear company fields" do
          # find_field('Name').value.should eq ''
          # find_field('Address').value.should eq ''
          # find_field('City').value.should eq ''
          # find_field('Zip').value.should eq ''
          # find_field('Company Email').value.should eq ''
          # find_field('State').value.should eq ''
        # end
      # end
#       
      # describe "to a company" do
        # before { select "add a company", from: "user[company_id]" }
#         
        # it "should not clear company fields" do
          # find_field('Name').value.should eq 'Brew Company'
          # find_field('Address').value.should eq '123 Some Street'
          # find_field('City').value.should eq 'Some City'
          # find_field('Zip').value.should eq '12345'
          # find_field('Company Email').value.should eq 'company@example.com'
          # find_field('State').value.should eq 'California'
        # end
      # end
    # end
  end
end