class User < ApplicationRecord
  require "securerandom"

  has_one :role
  has_many :post
  has_many :comment

  has_secure_password

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
