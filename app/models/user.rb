require 'bcrypt'

class User < ActiveRecord::Base
include BCrypt

  attr_accessor :password

  has_many :characters, dependent: :destroy

  validates :name, :email, :password, presence: true
  validates_length_of :password, minimum: 9
  validates :email, :uniqueness => {:case_sensitive => false}
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  before_save :encrypt_password

  def email= value
    unless value == nil
      self[:email] = value.gsub(/\s+/, "").downcase
    end
  end

  def encrypt_password
    if password.present?
      BCrypt::Engine.cost = 12
      self.encrypted_password = Password.create(password)
    end
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email.downcase)
    if user && BCrypt::Password.new(user.encrypted_password) == password
      user
    end
  end
end
