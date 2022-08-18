class Game < ApplicationRecord
  has_one :booking, dependent: :destroy
  validates :name, :genre, :platform, :condition, presence: true
  validates :price, presence: true
end
