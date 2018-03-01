class Transaction < ApplicationRecord
  belongs_to :buyer
  belongs_to :user
  belongs_to :vegetable
  validates :jumlahtransaksi, presence: true,
                     numericality: {greater_than: 0}
end