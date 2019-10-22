class ProductSize < ApplicationRecord
  alias_attribute :size_sku, :sku

  belongs_to :size
  belongs_to :product_article

  delegate :name, to: :size, prefix: false

  def name=(name)
    if name
      self.size = Size.find_or_initialize_by name: name
    end
  end
end
