require 'spec_helper'

describe "API" do
  before(:each) do
    page.driver.header 'Authorization', "Token token=\"pizza\"" 
  end  
    
  it "should get 'Access denied.' Status == 401 with no token" do
    page.driver.header 'Authorization', ""
    visit '/api/pubs'
    page.status_code.should == 401
  end
  
  it "should get 'Access denied.' Status == 401 with bad token" do
    page.driver.header 'Authorization', "Token token=\"bad token\"" 
    visit '/api/pubs'
    page.status_code.should == 401   
  end
  
  it "should get 'Success' Status == 200 With proper token" do    
    visit '/api/pubs'
    page.status_code.should == 200
  end
  
end
