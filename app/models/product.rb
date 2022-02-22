class Product < ApplicationRecord
  belongs_to :restaurant
  has_may :orders

  validates :name, presence: true
end
