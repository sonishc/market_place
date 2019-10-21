class ProductsController < ApplicationController
  def index
    @products = [{
        id: 1,
        name: 'Sandry Fabian Dress',
        sku: '435'
    }]

    # {
    #     "url":"https://example.com/dress/435?color=041",
    #     "product_sku":"435",
    #     "product_name":"Sundry Fabian Dress",
    #     "article_sku":"435_041",
    #     "article_name":"NAVY",
    #     "price":"$148.00",
    #     "photos":[
    #        {
    #           "url":"https://example.com/images/435_1.jpg",
    #        },
    #        {
    #           "url":"https://example.com/images/435_2.jpg",
    #        },
    #        {
    #           "url":"https://example.com/images/435_3.jpg",
    #        }
    #     ],
    #     "sizes":[
    #        {
    #           "size_sku":"435_041_4",
    #           "name":"XS",
    #           "available":true
    #        },
    #        {
    #           "size_sku":"435_041_5",
    #           "name":"S",
    #           "available":true
    #        },
    #        {
    #           "size_sku":"435_041_6",
    #           "name":"M",
    #           "available":true
    #        },
    #        {
    #           "size_sku":"435_041_7",
    #           "name":"L",
    #           "available":false
    #        },
    #        {
    #           "size_sku":"435_041_8",
    #           "name":"XL",
    #           "available":false
    #        }
    #     ]
    #  }
  end
end