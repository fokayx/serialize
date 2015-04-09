class ItemsController < ApplicationController

  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to :exams, notice:'OK'
    else
      render :new, notice: 'Error'
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :category)
  end
end
