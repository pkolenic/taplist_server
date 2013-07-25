require 'spec_helper'

describe "API" do
  # This is not working to skip the need to set the auth token
  #before(:each) do
  #  controller.stub!(:restrict_access => true)
  #end  
    
  it "should get 'Access denied.' Status == 401 with no token" do
    get '/api/pubs'
    response.response_code.should == 401
  end
  
  it "should get 'Access denied.' Status == 491 with bad token" do
    get '/api/pubs',{},{ 'HTTP_AUTHORIZATION'=>"Token token=\"bad token\"" }
    response.response_code.should == 401
  end
  
  it "should get 'Success' Status == 200 With proper token" do
    get '/api/pubs',{},{ 'HTTP_AUTHORIZATION'=>"Token token=\"pizza\"" }
    response.response_code.should == 200
  end
  
end
