class VotesController < ApplicationController
  before_action :authenticate_user!

  def create
  	item = Item.find(params[:id])
    item.liked_by current_user
    redirect_to items_path, notice: "You voted!"
  end

  def destroy
    item = Item.find(params[:id])
    item.unliked_by current_user
    redirect_to items_path, notice: "You unvoted!"
  end
end
