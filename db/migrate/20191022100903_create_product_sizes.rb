class CreateProductSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :product_sizes do |t|
      t.string :sku
      t.boolean :available
    end
  end
end
