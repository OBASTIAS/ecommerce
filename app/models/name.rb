class Name < ApplicationRecord
    has_and_belongs_to_many :categories
  has_many :variations, dependent: :destroy

  has_many :order_items
  has_many :orders, through: :order_items
end