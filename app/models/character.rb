class Character < ActiveRecord::Base
  validates :name, :level, :size, :race, presence: true
end
