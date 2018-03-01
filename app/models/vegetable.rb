class Vegetable < ApplicationRecord
  has_many :panens
  has_many :transactions

  validates :jumlah, presence: true, numericality: {greater_than: 0}
end