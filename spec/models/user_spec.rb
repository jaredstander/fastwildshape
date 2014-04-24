require "spec_helper"

describe User do

  it { should have_db_index(:name) }
  it { should have_db_index(:email) }
  it { should have_db_index(:password) }

  describe "when creating a new user" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    # email only validates presence and inclusion of @ symbol
    # email to user with confirmation link will weed more complex but invalid email addresses
    it { should allow_value("e@e").for(:email) }
    it { should_not allow_value("emailatexample.com").for(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:password_confirmation) }
    it "stores all emails as downcase with white space truncated" do
      user = create(:user, email: " Jo hn.Do e @exa mp le.c om ")
      user.email.should == "john.doe@example.com"
    end
  end

end