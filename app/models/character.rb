class Character < ActiveRecord::Base
  validates :name, :level, :size, :race, :strength, :dexterity, presence: true
end
