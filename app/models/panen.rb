class Panen < ApplicationRecord
  belongs_to :vegetable
  validates :tambah, presence: true, numericality: {greater_than: 0}
end