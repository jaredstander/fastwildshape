require "spec_helper"

describe Character do

  context "names" do
    char = FactoryGirl.create(:character)
    it { should validate_presence_of(:name) }
    it "truncate all white space" do
      char.name = "  Bobby Hill "
      char.name.should == "Bobby Hill"
    end
  end

  context "level" do
    it { should validate_presence_of(:level) }
    it { should validate_numericality_of(:level).is_greater_than(0).is_less_than(21) }
  end

  context "size" do
    it { should validate_presence_of(:size) }
    # it "stored downcased with white space truncated" do
    #   char.size = " MedIu m "
    #   char.size.should == "medium"
    # end
    #
    # This will be a 'select one' type of input. Simply make sure selection is on inclusion list. Rewrite to reflect this.
  end

  context "strength" do
    it { should validate_presence_of(:str) }
    it { should validate_numericality_of(:str).is_greater_than(0).is_less_than(101) }
  end

  context "dexterity" do
    it { should validate_presence_of(:dex) }
    it { should validate_numericality_of(:dex).is_greater_than(0).is_less_than(101) }
  end

  context "constitution" do
    it { should validate_presence_of(:con) }
    it { should validate_numericality_of(:con).is_greater_than(0).is_less_than(101) }
  end

  context "base attack bonus" do
    it { should validate_presence_of(:bab) }
    it { should validate_numericality_of(:bab).is_greater_than(0).is_less_than(21) }
  end

  context "armour class" do
    it { should validate_presence_of(:total_ac) }
    it { should validate_numericality_of(:total_ac).is_greater_than(9).is_less_than(101) }
  end

  context "touch ac" do
    it { should validate_presence_of(:touch_ac) }
    it { should validate_numericality_of(:touch_ac).is_greater_than(9).is_less_than(101) }
  end

  context "flat-footed ac" do
    it { should validate_presence_of(:flatfooted_ac) }
    it { should validate_numericality_of(:flatfooted_ac).is_greater_than(9).is_less_than(101) }
  end

  context "stackable ac" do
    it { should validate_presence_of(:stackable_armor_ac) }
    it { should validate_numericality_of(:stackable_armor_ac).is_greater_than(-1).is_less_than(101) }
  end

  context "milestone levels" do
    it { should validate_presence_of(:milestone_levels) }
  end

  describe "belongs to a user" do
    # it { should belong_to(:user) }
  end

  describe "has no available forms before first milestone level" do
    # it { should_not have_many(:available_forms) }
  end

  describe "lists available forms after first milestone level" do
    # it { should have_many(:available_forms) } 
  end

end