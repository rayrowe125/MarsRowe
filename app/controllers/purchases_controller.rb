class PurchasesController < ApplicationController

  def create
    @shirt = Shirt.find(params[:shirt_id])
    @purchase = Purchase.create(user_id: current_user.id, shirt_id: @shirt.id)
    redirect_to request.referer
  end

  def destroy
    @shirt = Shirt.find(params[:id])
    @purchase = Purchase.find_by(user_id: current_user.id, shirt_id: @shirt.id)
    @purchase.destroy
    redirect_to request.referer
  end

  def index
    @purchases = Purchase.all
    @purchase = Purchase.find_by(params[:id])
    @user = current_user
  end

end