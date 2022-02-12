class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :products, through: :order_items
  has_many :payments
  validates :number, uniqueness: true
end
