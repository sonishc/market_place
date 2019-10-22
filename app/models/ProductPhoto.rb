class ProductPhoto < ApplicationRecord
  belongs_to :product_article

  validates :url, presence: true
end
