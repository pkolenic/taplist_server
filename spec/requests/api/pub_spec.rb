require 'spec_helper'

describe "API pubs" do
  before do
     page.driver.header 'Authorization', "Token token=\"pizza\"" 
     visit '/api/pubs'
  end

  specify { page.should have_content("pubs") }
  specify { page.should have_content("requireUpgrade") }
end