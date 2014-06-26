class Character < ActiveRecord::Base
  validates :name,
            :level,
            :size,
            :str,
            :dex,
            :con,
            :bab,
            :total_ac,
            :touch_ac,
            :flatfooted_ac,
            :stackable_armor_ac,
            :druid?,
            presence: true
end
