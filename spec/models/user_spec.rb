require "spec_helper"

describe User do

  describe "attribute name" do
    user = FactoryGirl.create(:user)
    it { should validate_presence_of(:name) }
  end

  describe "email" do
    user = FactoryGirl.create(:user)
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end

  describe "email ensures presence of @ and . symbol after @" do
    it { should allow_value("e@e.com").for(:email) }
    it { should_not allow_value("emailatexampledotcom").for(:email) }
  end

  describe "email stores as downcase with white space truncated" do
    user = FactoryGirl.create(:user)
    user.email = " Jo hn.Do e @exa mp le.c om "
    user.email.should == "john.doe@example.com"
  end

  describe "password" do
    user = FactoryGirl.create(:user)
    it { should validate_presence_of(:password) }
    it { should ensure_length_of(:password).is_at_least(8) }
  end

  describe "password should be encrypted" do
    user = FactoryGirl.create(:user)
    subject { user.password }
    it { should_not == "AGreatPassword!" }
  end

  # describe "authentication" do
  #   user = FactoryGirl.create(:user)

  #   # it "authenticates with a correct email and password" do
  #   #   user.authenticate(user.email, "AGreatPassword!").should equal(user)
  #   # end

  #   # it "authenticates with a correct email and password regardless of email case" do
  #   #   user.authenticate(user.email.uppercase, "AGreatPassword!").should equal(user)
  #   # end

  #   # it "should not authenticate with an incorrect email or password" do
  #   #   user.authenticate(user.email, "WrongPassword").should be_nil
  #   #   user.authenticate("randomemail@account.com", user.password).should be_nil
  #   # end
  # end
end