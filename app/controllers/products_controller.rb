class ProductsController < ApplicationController
  def index
    @cart = cart
  end

  def add

    cart << params[:product]
    @cart = cart
    render :index
    #redirect_to products_index_path
  end
end
