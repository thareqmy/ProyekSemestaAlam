class Vegetable < ApplicationRecord
  has_many :panen

  validates :jumlah, presence: true, numericality: {greater_than: 0}
end