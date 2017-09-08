class CartsController < ApplicationController

  def show
    @current_cart = Cart.find(params[:id])
  end

  def checkout
    @cart = Cart.find(params[:id])
    if @cart.checkout
      current_user.remove_cart
    end
    redirect_to cart_path(@cart)
  end

end
