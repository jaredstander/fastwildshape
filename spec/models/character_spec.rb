require "spec_helper"

describe Character do
  
  # it { should have_db_index(:character_name) } # text
  # it { should have_db_index(:character_size) } # choice dropdown
  # it { should have_db_index(:level) } # integer 1-20
  # it { should have_db_index(:strength) } # integer 1-30
  # it { should have_db_index(:dexterity) } # integer 1-30
  # it { should have_db_index(:constitution) } # integer 1-30
  # it { should have_db_index(:base_attack_bonus) } # integer 1-20
  # it { should have_db_index(:total_ac) } # integer, 10 and up
  # it { should have_db_index(:touch_ac) } # integer, 10 and up
  # it { should have_db_index(:flatfooted_ac) } # integer, 10 and up
  # it { should have_db_index(:stackable_ac) } # integer, 0 and up
  # it { should have_db_index(:druid?) } # checkbox or radio buttons
  # it { should have_db_index(:has_druid_archtype?) } # determined by archtype dropdown choice
  # it { should have_db_index(:druid_archtype) } # dropdown choice
  # it { should have_db_index(:archtype_level_adjustment) } # algorithm
  # it { should have_db_index(:archtype_type_adjustment) } # algorithm

  describe "when creating a new character" do
    # let(:character) { create(:character) }
    # expect(:character).to be_valid
    character = Character.new(name: "Bob",
                              race: "elf",
                              level: 4,
                              size: "medium",
                              str: 10,
                              dex: 10,
                              con: 10,
                              bab: 12,
                              total_ac: 13,
                              touch_ac: 10)
    it { expect(character).to be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:size) }
    it { should validate_presence_of(:level) }
    it { should validate_presence_of(:race) }
    it { should validate_presence_of(:str) }
    it { should validate_presence_of(:dex) }
    it { should validate_presence_of(:con) }
    it { should validate_presence_of(:bab) }
    it { should validate_presence_of(:total_ac) }
    it { should validate_presence_of(:touch_ac) }
  #   it { should validate_presence_of(:flatfooted_ac) }
  #   it { should validate_presence_of(:stackable_ac) }
  #   it { should validate_presence_of(:druid?) }
  #   it { should validate_uniqueness_of(:character_name) }
  #   it { should allow_mass_asignment_of(:character_name) }
  #   it { should allow_mass_asignment_of(:druid?) }
  #   it { should allow_mass_asignment_of(:druid_archtype) }
  #   it { should allow_mass_asignment_of(:level) }
  #   it "stores druid? as a boolean value" do
  #     it { should allow_value(true).for(:druid?) }
  #     it { should allow_value(false).for(:druid?) }
  #   end
  #   it { should validate_numericality_of(:level).is_greater_than(0).is_less_than(21) }
  end

end