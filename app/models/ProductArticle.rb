class ProductArticle < ApplicationRecord
  alias_attribute :article_name, :name
  alias_attribute :article_sku, :sku

  has_many :product_sizes
  has_many :sizes, through: :product_sizes
  has_many :product_photos
  has_many :related_sku, class_name: 'ProductArticle', foreign_key: 'related_sku_id'

  belongs_to :product
end
