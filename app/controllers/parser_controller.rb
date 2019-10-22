require 'json'

class ParserController < ApplicationController
  def update
    product = Product.find_by sku: product_params[:product_sku]

    pa = product.product_articles.build(product_articles_params)
    pa.product_sizes.build(product_sizes_params)
    pa.product_photos.build(product_photo_params)

    if product.valid?
      product.save
    else
      flash[:error] = "Product is unsaved!"
    end
  end

  def create
    product = Product.new(product_params)

    pa = product.product_articles.build(product_articles_params)
    pa.product_sizes.build(product_sizes_params)
    pa.product_photos.build(product_photo_params)

    if product.valid?
      product.save
    else
      flash[:error] = "Product is unsaved!"
    end
  end

  private

  def product_params
    params.permit(:product_name, :product_sku)
  end

  def product_articles_params
    params.permit(:article_name, :article_sku, :url, :price)
  end

  def product_sizes_params
    params.permit(sizes: [:size_sku, :available, :name]).require(:sizes)
  end

  def product_photo_params
    params.permit(photos: [:url]).require(:photos)
  end

  def related_sku_params
    params.permit(related_sku: [:url]).require(:photos)
  end
end