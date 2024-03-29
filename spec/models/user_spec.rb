require 'spec_helper'

describe User do
  before do
    @user = User.new(first_name: "Example", last_name: "User",
                      email: "user@example.com", phone_number: "321-555-1234",
                      password: "foobar", password_confirmation: "foobar",
                      company_id: 1)
  end

  subject { @user }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:email) }
  it { should respond_to(:phone_number) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:authenticate) }
  it { should respond_to(:company_id) }
  it { should respond_to(:status) }

  it { should be_valid }

  describe "when first name is not present" do
    before { @user.first_name = " " }
    it { should_not be_valid }
  end

  describe "when last name is not present" do
    before { @user.last_name = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "when first name is too long" do
    before { @user.first_name = "a" * 26 }
    it { should_not be_valid }
  end

  describe "when last name is too long" do
    before { @user.last_name = "a" * 26 }
    it { should_not be_valid }
  end

  describe "when company_id is not set" do
    before { @user.company_id = " " }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
      foo@bar_baz.com foo@bar+baz.com foo@bar..com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn name_@az.com]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  describe "email address with mixed case" do
    let(:mixed_case_email) { "Foo@ExAMPle.CoM" }

    it "should be saved as all lower-case" do
      @user.email = mixed_case_email
      @user.save
      expect(@user.reload.email).to eq mixed_case_email.downcase
    end
  end

  describe "when phone number is invalid" do
    it "should be invalid" do
      numbers = %w[111-345-3553 294-344-3111 1112234444 1123 208424321 20842432104]
      numbers.each do |invalid_number|
        @user.phone_number = invalid_number
        expect(@user).not_to be_valid
      end
    end
  end

  describe "when phone number is valid" do
    it "should be valid" do
      numbers = %w[208-345-3553 323-444-5555 (208)-345-3553 2083453553]
      numbers.each do |invalid_number|
        @user.phone_number = invalid_number
        expect(@user).to be_valid
      end
    end
  end

  describe "blank phone number is valid" do
    before { @user.phone_number = "" }
    it { should be_valid }
  end

  describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

  describe "return value of authenticate method" do
    before { @user.save }
    let(:found_user) { User.find_by(email: @user.email) }

    describe "with valid password" do
      it { should eq found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not eq user_for_invalid_password }
      specify { expect(user_for_invalid_password).to be_false }
    end
  end

  describe "remember token" do
    before { @user.save }
    its(:remember_token) { should_not be_blank }
  end
  
  describe "status should be pending" do
    before { @user.save }
    its(:status) { should_not be_blank }
    it{ should be_pending_approval }
  end
  
  describe "status should be awaiting confirmation" do
    let(:user2) { User.new(first_name: "Example", last_name: "User",
                      email: "user@example.com", phone_number: "321-555-1234",
                      password: "foobar", password_confirmation: "foobar") }
    before do
      user2[:company_id] = 1
      user2.save
    end
    specify { expect(user2.awaiting_confirmation?).to be_true }
  end
end
