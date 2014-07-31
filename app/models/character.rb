class Character < ActiveRecord::Base
  validates :name, :level, :size, :str, :dex, :con, :bab, :total_ac, :touch_ac,
            :flatfooted_ac, :stackable_armor_ac, :milestone_levels, presence: true

  validates :str, :dex, :con, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }
  validates :total_ac, :touch_ac, :flatfooted_ac, numericality: { only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 100 }
  validates :stackable_armor_ac, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :level, :bab, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 20 }
  validates :size, inclusion: { in: %w(fine diminutive tiny small medium large huge gargantuan colossal), message: "%{value} is not a valid size" }

  def name= value
    unless value == nil
      self[:name] = value.strip
    end
  end
end
