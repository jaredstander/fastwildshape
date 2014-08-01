# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wild_shape_form do
    name "wolfcat"
    size "medium"
    type "animal"
    subtype "none"
    base_speed 50
    abilities "scent, low-light vision, trip"
    attacks "bite +BAB (1d6+STR*1.5 plus trip)"
    cmd_bonus_vs_trip 4
  end
end
