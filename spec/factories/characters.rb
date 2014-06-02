FactoryGirl.define do

  factory :character do
    name { "#{Faker::Name.name}" }
  #   character_name { "Zaiko" }
  # character_size { "Medium" }
  # level { 4 }
  #   strength { 12 }
  #   dexterity { 12 }
  #   constitution { 10 }
  #   base_attack_bonus { 3 }
  #   total_ac { 16 }
  #   touch_ac { 12 }
  #   flatfooted_ac { 14 }
  #   stackable_ac { 0 }
  #   druid? { true }
  #   should have_db_index(:has_druid_archtype? { false }
  #   druid_archtype { "none" }
  #   archtype_level_adjustment { 0 }
  #   archtype_type_adjustment {"none" }
  end

end