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
    it { should ensure_length_of(:password).is_at_least(9) }
  end

  describe "'s encrypted password" do
    user = FactoryGirl.create(:user)
    subject { user.encrypted_password }
    it { should_not === user.password }
  end

  describe "encrypted password should be salted" do
    user1 = User.create(name: "User One", email: "email@testone.com", password: "password!")
    user2 = User.create(name: "User Two", email: "otheremail@testtwo.com", password: "password!")
    subject { user1.encrypted_password }
    it { should_not == user2.encrypted_password }
  end

  # describe "authentication" do
  #   user = FactoryGirl.create(:user)

  #   describe "succeeds with a valid email and password" do
  #     user.authenticate(user.email, "AGreatPassword!").should equal(user)
  #   end

  #   describe "succeeds with a correct email and password regardless of email case" do
  #     user.authenticate(user.email.uppercase, "AGreatPassword!").should equal(user)
  #   end

  #   describe "fails with an incorrect email or password" do
  #     user.authenticate(user.email, "WrongPassword").should be_nil
  #     user.authenticate("notauser@account.com", "somekindofthing").should be_nil
  #   end
  # end
end