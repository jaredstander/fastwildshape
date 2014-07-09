class User < ActiveRecord::Base
  validates :name, :email, :password, presence: true
  validates_length_of :password, minimum: 8
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  def email= value
    unless value == nil
      self[:email] = value.gsub(/\s+/, "").downcase
    end
  end
end
