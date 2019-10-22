class AddProductRefToProductArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :product_articles, :product, null: false, foreign_key: true
  end
end
