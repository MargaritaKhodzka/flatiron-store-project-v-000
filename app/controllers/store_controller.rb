class StoreController < ApplicationController

  def index
    @categories = Category.all
    @items = Item.all
    @user = current_user
  end

end
