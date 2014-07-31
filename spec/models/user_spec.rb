require "spec_helper"

describe User do

  context "requires a name name" do
    it { should validate_presence_of(:name) }
  end

  context "requires an email" do
    it { should validate_presence_of(:email) }
  end

  context "requires a unique email" do
    it { should validate_uniqueness_of(:email) }
  end

  context "email contains an @ symbole and a . symbol after the @" do
    it { should allow_value("e@e.com").for(:email) }
    it { should_not allow_value("emailatexampledotcom").for(:email) }
  end

  context "email stores as downcase with white space truncated" do
    user = FactoryGirl.create(:user)
    user.email = " Jo hn.Do e @exa mp le.c om "
    user.email.should == "john.doe@example.com"
  end

  it "email is case insensitively unique" do
    user1 = FactoryGirl.create(:user, email: "anemail@email.com")
    user2 = User.new(name: "Name", email: "anEmaiL@EMail.Com", password: "apassword")
    user2.should have(1).error_on(:email)
    puts user2.errors
    expect(user2.errors[:email]).to include("has already been taken")
  end

  context "password" do
    user = FactoryGirl.create(:user)
    it { should validate_presence_of(:password) }
    it { should ensure_length_of(:password).is_at_least(9) }
  end

  context "'s encrypted password" do
    user = FactoryGirl.create(:user)
    subject { user.encrypted_password }
    it { should_not === user.password }
  end

  context "encrypted password should be salted" do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)
    user1.encrypted_password.should_not == user2.encrypted_password
  end

  describe "authentication" do
    user = FactoryGirl.create(:user)

    describe "succeeds with a valid email and password" do
      User.authenticate(user.email, "AGreatPassword!").should == user
    end

    describe "succeeds with a correct email and password regardless of email case" do
      User.authenticate(user.email.upcase, "AGreatPassword!").should == user
    end

    describe "fails with an incorrect email or password" do
      User.authenticate(user.email, "WrongPassword").should == nil
      User.authenticate("notauser@account.com", "somekindofthing").should == nil
    end
  end
end