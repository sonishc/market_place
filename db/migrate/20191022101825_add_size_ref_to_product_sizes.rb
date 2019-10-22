class AddSizeRefToProductSizes < ActiveRecord::Migration[6.0]
  def change
    add_reference :product_sizes, :size, null: false, foreign_key: true
  end
end
