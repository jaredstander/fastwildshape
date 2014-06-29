require "spec_helper"

describe Character do

  describe "when creating a new character" do
    FactoryGirl.create(:character)
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:size) }
    it { should validate_presence_of(:level) }
    it { should validate_presence_of(:str) }
    it { should validate_presence_of(:dex) }
    it { should validate_presence_of(:con) }
    it { should validate_presence_of(:bab) }
    it { should validate_presence_of(:total_ac) }
    it { should validate_presence_of(:touch_ac) }
    it { should validate_presence_of(:flatfooted_ac) }
    it { should validate_presence_of(:stackable_armor_ac) }
    it { should validate_presence_of(:is_druid) }
    it { should validate_presence_of(:milestone_levels) }
    it { should validate_numericality_of(:is_druid) }
    it { should validate_numericality_of(:is_druid).is_greater_than(-1).is_less_than(2) }
    it { should validate_numericality_of(:level).is_greater_than(0).is_less_than(21) }
  end

  describe "get valid wild shape forms" do
    # 
  end

end