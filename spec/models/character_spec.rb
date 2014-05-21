require "spec_helper"

describe Character do
  
  it { should have_db_index(:character_name) }
  it { should have_db_index(:character_size) }
  it { should have_db_index(:druid?) }
  it { should have_db_index(:druid_archtype) }
  it { should have_db_index(:archtype_level_adjustment) }
  it { should have_db_index(:archtype_type_adjustment) }
  it { should have_db_index(:level) }
  it { should have_db_index(:strength) }
  it { should have_db_index(:dexterity) }
  it { should have_db_index(:constitution) }
  it { should have_db_index(:base_attack_bonus) }
  it { should have_db_index(:total_ac) }
  it { should have_db_index(:touch_ac) }
  it { should have_db_index(:flatfooted_ac) }
  it { should have_db_index(:stackable_ac) }

  describe "when creating a new character" do
    it { should validate_presence_of(:character_name) }
    it { should validate_presence_of(:druid?) }
    it { should validate_presence_of(:level) }
    # Archtype is optional; present a dropdown list, and have "None" as the default selection
    it { should validate_uniqueness_of(:character_name) }
    it { should allow_mass_asignment_of(:character_name) }
    it { should allow_mass_asignment_of(:druid?) }
    it { should allow_mass_asignment_of(:druid_archtype) }
    it { should allow_mass_asignment_of(:level) }
    it "stores druid? as a boolean value" do
      it { should allow_value(true).for(:druid?) }
      it { should allow_value(false).for(:druid?) }
    end
    it { should validate_numericality_of(:level).is_greater_than(0).is_less_than(21) }
  end

end