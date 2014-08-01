require 'spec_helper'

describe WildShapeForm do
  context "when choosing a name" do
    it { should validate_presence_of(:name) }
    it "is case insensitively unique by name" do
      user1 = FactoryGirl.create(:wild_shape_form)
      user2 = WildShapeForm.new(name: "WOLFCAT", size: "medium", creature_type: "animal", creature_subtype: "none", base_speed: 50, abilities: "scent, low-light vision, trip", attacks: "bite +BAB (1d6+STR*1.5 plus trip)", cmd_bonus_vs_trip: 4)
      user2.should have(1).error_on(:name)
      expect(user2.errors[:name]).to include("has already been taken")
    end
  end
  
  context "when selecting a size" do
    it { should validate_presence_of(:size) }
    it { should ensure_inclusion_of(:size).in_array(%w[diminutive tiny small medium large huge]) }
  end

  context "when selecting a type" do
    it { should validate_presence_of(:creature_type) }
    it { should ensure_inclusion_of(:creature_type).in_array(%w[animal plant elemental])}
  end

  it { should validate_presence_of(:creature_subtype) }

  context "when selecting a base speed" do
    it { should validate_presence_of(:base_speed) }
    it { should validate_numericality_of(:base_speed).is_greater_than(9).is_less_than(81) }
  end

  it { should validate_presence_of(:abilities) }
  it { should validate_presence_of(:attacks) }

  context "when selecting a bonus to cmd vs trip" do
    it { should validate_presence_of(:cmd_bonus_vs_trip) }
    it { should validate_numericality_of(:cmd_bonus_vs_trip).is_greater_than(-1).is_less_than(13) }
  end
end
