require "spec_helper"

describe Character do

  describe "attributes" do
    char = FactoryGirl.create(:character)
    it { should validate_presence_of(:name) }
    it "truncates all white space for character names" do
      char.name = "  Bobby Hill "
      char.name.should == "Bobby Hill"
    end
    it { should validate_presence_of(:size) }
    it "stores all emails as downcase with white space truncated" do
      char.size = " MedIu m "
      char.size.should == "medium"
    end
    it { should validate_presence_of(:level) }
    it { should validate_numericality_of(:level).is_greater_than(0).is_less_than(21) }
    it { should validate_presence_of(:str) }
    it { should validate_numericality_of(:str) }
    it { should validate_presence_of(:dex) }
    it { should validate_numericality_of(:dex) }
    it { should validate_presence_of(:con) }
    it { should validate_numericality_of(:con) }
    it { should validate_presence_of(:bab) }
    it { should validate_numericality_of(:bab) }
    it { should validate_presence_of(:total_ac) }
    it { should validate_numericality_of(:total_ac) }
    it { should validate_presence_of(:touch_ac) }
    it { should validate_numericality_of(:touch_ac) }
    it { should validate_presence_of(:flatfooted_ac) }
    it { should validate_numericality_of(:flatfooted_ac) }
    it { should validate_presence_of(:stackable_armor_ac) }
    it { should validate_numericality_of(:stackable_armor_ac) }
    it { should validate_presence_of(:is_druid) }
    it { should validate_numericality_of(:is_druid).is_greater_than(-1).is_less_than(2) }
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