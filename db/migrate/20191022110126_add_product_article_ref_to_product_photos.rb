class AddProductArticleRefToProductPhotos < ActiveRecord::Migration[6.0]
  def change
    add_reference :product_photos, :product_article, null: false, foreign_key: true
  end
end
