require "spec_helper"

describe User do
  context "#new" do
    it "allows mass assignment of email" do
      expect { user = User.new(email: "knightartorias@lordran.com") }.not_to raise_error
    end

    it "allows mass assignment of name" do
      expect { user = User.new(name: "Knight Artorias") }.not_to raise_error
    end

    it "allows mass assignment of password" do
      expect { user = User.new(password: "AGreatPassword!") }.not_to raise_error
    end

    it { should respond_to(email) }
    it { should respond_to(name) }
    it { should respond_to(password) }
  end

  context "#save" do
    it "requires an email address" do
      user = User.new(name: "Knight Artorias", password: "AGreatPassword!")
      expect(user).not_to be_valid
    end

    it "requires a name" do
      user = User.new(email: "knightartorias@lordran.com", password: "AGreatPassword!")
      expect(user).not_to be_valid
    end

    it "requires a password" do
      user = User.new(email: "knightartorias@lordran.com", name: "Knight Artorias")
      expect(user).not_to be_valid
    end
  end
end