# frozen_string_literal: true

class HomeController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10, page_info: params[:page_info] })
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end

  def productslisting
    @productslist = ShopifyAPI::Product.find(:all, params: { limit: 10, page_info: params[:page_info] })
    # add_products(@productslist)
  end

  def orderslisting
    @orderslist = ShopifyAPI::Order.find(:all, params: { limit: 2, page_info: params[:page_info] })
  end

  # def add_products(products)
  #   products.each do |product|
  #     db_products = Product.new
  #     db_products.title = product.title
  #     db_products.title = product.title

  #   end
  # end
end
