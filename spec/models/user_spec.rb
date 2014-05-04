require "spec_helper"

describe User do

  it { should have_db_index(:name) }
  it { should have_db_index(:email) }
  it { should have_db_index(:password) }

  describe "when creating a new user" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    # email only validates presence, and inclusion of @ symbol
    # will email user with confirmation link, which will be final validation
    it { should allow_value("e@e").for(:email) }
    it { should_not allow_value("emailatexample.com").for(:email) }
    it "stores all emails as downcase with white space truncated" do
      user = create(:user, email: " Jo hn.Do e @exa mp le.c om ")
      user.email.should == "john.doe@example.com"
    end
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:password_confirmation) }
    it "Should ensure passwords match" do
      user = create(name: "Knight Artorias", email: "knightartorias@lordran.com", password: "AGreatPassword!", password_confirmation: "AGreatPassword!")
      it { validates_confirmation_of(:password) }
    end
    it { should ensure_length_of(:password).is_at_least(8) }
    it { should_not allow_mass_assignment_of(:password) }
  end

  describe "user activities" do
    let(user) { create(:user) }

    it "authenticates with a correct email and password" do
      user.authenticate(user.email, "AGreatPassword!").should eq(user)
    end

    it "authenticates with a correct email and password regardless of email case" do
      user.authenticate(user.email.uppercase, "AGreatPassword!").should eq(user)
    end

    it "should not authenticate with an incorrect email or password" do
      user.authenticate(user.email, "WrongPassword").should be_nil
      user.authenticate("randomemail@account.com", user.password).should be_nil
    end
  end
end