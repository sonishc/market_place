class AddProductArticleRefToProductSizes < ActiveRecord::Migration[6.0]
  def change
    add_reference :product_sizes, :product_article, null: false, foreign_key: true
  end
end
