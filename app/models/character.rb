class Character < ActiveRecord::Base
  validates :name, :level, :size, :str, :dex, :con, :bab, :total_ac, :touch_ac,
            :flatfooted_ac, :stackable_armor_ac, :is_druid, :milestone_levels, presence: true
end
