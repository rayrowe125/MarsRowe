class PagesController < ApplicationController
  def index
    @shirt = Shirt.new
    @shirts = Shirt.all
    @user = User.new
  end
end