class Buyer < ApplicationRecord
  belongs_to :user
  has_many :transactions

  validates :nama, presence: true,
                   uniqueness: {case_sensitive: false}
end