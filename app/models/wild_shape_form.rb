class WildShapeForm < ActiveRecord::Base
  validates :name, :uniqueness => {:case_sensitive => false}
  validates :name, :size, :type, :subtype, :base_speed, :abilities, :attacks, :cmd_bonus_vs_trip, presence: true
  validates :base_speed, numericality: { only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 80 }
  validates :base_speed, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 12 }
  validates :size, inclusion: { in: %w(diminutive tiny small medium large huge), message: "%{value} is not a valid size" }
  validates :type, inclusion: { in: %w(animal plant elemental), message: "%{value} is not a valid form type" }
end
