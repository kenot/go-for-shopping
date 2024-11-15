class Item < ApplicationRecord
  belongs_to :shop

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
