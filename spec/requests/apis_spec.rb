require 'spec_helper'

describe "API" do
  
  it "should be reachable" do
    visit '/api/pubs'
  end
end
