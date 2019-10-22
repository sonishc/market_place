class Product < ApplicationRecord
  alias_attribute :product_name, :name
  alias_attribute :product_sku, :sku

  has_many :product_articles

  validates :sku, uniqueness: true
  validates :name, presence: true
  validates :sku, presence: true
end
