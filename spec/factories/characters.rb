FactoryGirl.define do

  factory :character do
    name { "#{Faker::Name.name}" }
    character_name { "Zaiko" }
    character_size { "Medium" }
    it { should have_db_index(:level) } # integer 1-20
    it { should have_db_index(:strength) } # integer 1-30
    it { should have_db_index(:dexterity) } # integer 1-30
    it { should have_db_index(:constitution) } # integer 1-30
    it { should have_db_index(:base_attack_bonus) } # integer 1-20
    it { should have_db_index(:total_ac) } # integer, 10 and up
    it { should have_db_index(:touch_ac) } # integer, 10 and up
    it { should have_db_index(:flatfooted_ac) } # integer, 10 and up
    it { should have_db_index(:stackable_ac) } # integer, 0 and up
    it { should have_db_index(:druid?) } # checkbox or radio buttons
    it { should have_db_index(:has_druid_archtype?) } # determined by archtype dropdown choice
    it { should have_db_index(:druid_archtype) } # dropdown choice
    it { should have_db_index(:archtype_level_adjustment) } # algorithm
    it { should have_db_index(:archtype_type_adjustment) } # algorithm
  end

end