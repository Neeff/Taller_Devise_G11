class AdminsController < ApplicationController
  before_action :set_user, only: [:update]
  def index
    @users = User.all
  end

  def update
    @user.admin = true
    @user.save
    redirect_to admins_path
  end
  private
  def set_user
      @user = User.find(params[:id])
  end
end
