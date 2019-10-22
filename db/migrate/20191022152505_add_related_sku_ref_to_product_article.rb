class AddRelatedSkuRefToProductArticle < ActiveRecord::Migration[6.0]
  def change
    add_reference :product_articles, :related_sku
  end
end
