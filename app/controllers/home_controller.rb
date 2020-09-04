# frozen_string_literal: true

class HomeController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end

  def productslisting
    @productslist = ShopifyAPI::Product.find(:all)
    @productslist.each do |product|
      Product.create!(id: product.id, title: product.title, vendor: product.vendor)
    end
  end

  def orderslisting
    @orderslist = ShopifyAPI::Order.find(:all)
  end
end
