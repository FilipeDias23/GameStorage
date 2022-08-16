class Game < ApplicationRecord
  has_one :booking, dependent: :destroy
  validates :name, :genre, :platform, :condition, presence: true, absence: true
  validates :name, length: { in: 6..30 }, absence: true
  validates :price, presence: true
end
