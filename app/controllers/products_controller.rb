class ProductsController < ApplicationController
  def index
    @products = Product.order(:created_at ).limit(9)
    # @products = Product.order(created_at: :asc ).limit(9)
  end

  def show
    @product = Product.find(params[:id])
    @category = @product.category
  end
end
