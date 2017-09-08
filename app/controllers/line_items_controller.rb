class LineItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.create_current_cart unless current_user.current_cart
    @current_cart = current_user.current_cart
    line_item = @current_cart.add_item(params[:item_id])
    line_item.save
    redirect_to cart_path(current_user.current_cart)
  end

end
