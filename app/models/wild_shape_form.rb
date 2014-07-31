class WildShapeForm < ActiveRecord::Base
  validates :name, :size, :type, :subtype, :abilities, :attacks, presence: true
  validates :size, inclusion: { in: %w(diminutive tiny small medium large huge), message: "%{value} is not a valid size" }
  validates :type, inclusion: { in: %w(animal plant elemental), message: "%{value} is not a valid form type" }
end
