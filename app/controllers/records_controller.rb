class RecordsController < ApplicationController
  def listen
  	    @items = Item.all
  end

  def upvote 
  @item = Item.find(params[:id])
  @item.upvote_by current_user
  redirect_to :back
  end

end
