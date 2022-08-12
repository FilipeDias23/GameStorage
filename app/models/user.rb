class User < ApplicationRecord
  has_many :games, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :first_name, :last_name, :username, presence: true, length: { in: 2..20 }, absence: true
  validates :age, presence: true, { only_integer: true }
  validates :age, comparison: { greater_than: 16 }
  validades :email, presence: true, absence: true
  validates :location, presence: true, absence: true
end
