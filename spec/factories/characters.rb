FactoryGirl.define do

  factory :character do
    name "Bob"
    level 4
    size "medium"
    str 10
    dex 10
    con 10
    bab 12
    total_ac 13
    touch_ac 10
    flatfooted_ac 13
    stackable_armor_ac 0
    is_druid 1
    milestone_levels "4,6,8,10,12"
  end

end