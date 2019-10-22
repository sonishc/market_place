class Size < ApplicationRecord
  has_many :product_sizes
  has_many :product_articles, through: :product_sizes

  validates :name, uniqueness: true
end
