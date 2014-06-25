class Character < ActiveRecord::Base
  validates :name, :level, :size, :race, :str, :dex, :con, :bab, :total_ac, :touch_ac, presence: true
end
