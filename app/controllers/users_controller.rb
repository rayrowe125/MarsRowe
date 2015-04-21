class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :current_user, 
  def dashboard
  end

  def admin
    @user = current_user
    @shirt = Shirt.find_by(params[user_id: current_user])
  end
end
