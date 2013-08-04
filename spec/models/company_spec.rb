require 'spec_helper'

describe Company do
  
  before do
    @company = Company.new(name: "Brew Company", address: "123 Some Street", city: "Some City", state: "OH",
                           zip: "12345", email: "company@example.com")
  end
  
  subject { @company }
  
  it { should respond_to(:id) }
  it { should respond_to(:name) }
  it { should respond_to(:address) }
  it { should respond_to(:city) }
  it { should respond_to(:state) }
  it { should respond_to(:zip) }
  it { should respond_to(:email) }
  
  it { should be_valid }
  
  describe "when name is not present" do
    before { @company.name = " " }
    it { should_not be_valid }
  end
  
  describe "when address is not present" do
    before { @company.address = " " }
    it { should_not be_valid }
  end
  
  describe "when city is not present" do
    before { @company.city = " " }
    it { should_not be_valid }
  end
  
  describe "when state is not present" do
    before { @company.state = " " }
    it { should_not be_valid }
  end
  
  describe "when zip is not present" do
    before { @company.zip = " " }
    it { should_not be_valid }
  end
  
    describe "when email is not present" do
    before { @company.email = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @company.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when address is too long" do
    before { @company.address = "a" * 51 }
    it { should_not be_valid }
  end
  
  describe "when city is too long" do
    before { @company.city = "a" * 51 }
    it { should_not be_valid }
  end
  
  describe "when state is too long" do
    before { @company.state = "a" * 3 }
    it { should_not be_valid }
  end
  
  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
      foo@bar_baz.com foo@bar+baz.com foo@bar..com]
      addresses.each do |invalid_address|
        @company.email = invalid_address
        expect(@company).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn name_@az.com]
      addresses.each do |valid_address|
        @company.email = valid_address
        expect(@company).to be_valid
      end
    end
  end
  
  describe "email address with mixed case" do
    let(:mixed_case_email) { "Foo@ExAMPle.CoM" }

    it "should be saved as all lower-case" do
      @company.email = mixed_case_email
      @company.save
      expect(@company.reload.email).to eq mixed_case_email.downcase
    end
  end
  
  describe "when zip is too long" do
    before { @company.zip = "1" * 11 }
    it { should_not be_valid }
  end
  
  describe "when zip format is invalid" do
    it "should be invalid" do
      zips = %w[1234 12345-123 123456 12345-12345 1234a 12345-123a]
      zips.each do |invalid_zip|
        @company.zip = invalid_zip
        expect(@company).not_to be_valid
      end
    end
  end
  
  describe "when zip format is valid" do
    it "should be valid" do
      zips = %w[12345 12345-1234]
      zips.each do |valid_zip|
        @company.zip = valid_zip
        expect(@company).to be_valid
      end
    end
  end
  
  describe "when bad state is invalid" do
    it "should be invalid" do
      states = %w[mexico WW aa Novada]
      states.each do |invalid_state|
        @company.state = invalid_state
        expect(@company).not_to be_valid
      end
    end
  end
  
  describe "when good state is valid" do
    it "should be valid" do
      states = %w[ca CA Ca california California cAlifornia CaLifornia]
      states.each do |valid_state|
        @company.state = valid_state
        expect(@company).to be_valid
      end
    end
  end
  
  describe "state without abbreviation case" do
    let(:state_name) { "California" }

    it "should be saved as state abbreviation" do
      @company.state = state_name
      @company.save
      expect(@company.reload.state).to eq 'CA'
    end
  end
  
  describe "state with downcase abbreviation case" do
    let(:state_abv) { "ca" }
    
    it "should be saved as upcase state abbreviation" do
      @company.state = state_abv
      @company.save
      expect(@company.reload.state).to eq 'CA'
    end
  end
end